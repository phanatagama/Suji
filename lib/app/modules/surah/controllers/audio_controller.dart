import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suji/core/theme/colors.dart';

class AudioController extends GetxController {
  final AudioPlayer _audioPlayer = AudioPlayer()
    // ..setPlayerMode(PlayerMode.lowLatency)
    ..setReleaseMode(ReleaseMode.stop);
  AudioPlayer get audioPlayer => _audioPlayer;
  // final _playerState = PlayerState.stopped.obs;
  // PlayerState get playerState => _playerState.value;

  final _selectedAudioIdx = 9999.obs;
  int get selectedAudioIdx => _selectedAudioIdx.value;

  void resetSelectedAudioIdx() => _selectedAudioIdx.value = 9999;

  late StreamSubscription _durationSubscription;
  late StreamSubscription _positionSubscription;
  late StreamSubscription _playerCompleteSubscription;
  late StreamSubscription _playerStateSubscription;

  @override
  void onInit() {
    super.onInit();
    // print('Duration: ${_audioPlayer.getDuration()}');
    // print('Position: ${_audioPlayer.getCurrentPosition()}');
    setupAudioPlayer();
  }

  @override
  void dispose() {
    _durationSubscription.cancel();
    _positionSubscription.cancel();
    _playerCompleteSubscription.cancel();
    _playerStateSubscription.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }

  void setupAudioPlayer() {
    AudioLogger.logLevel = AudioLogLevel.error;

    _playerCompleteSubscription = audioPlayer.onPlayerComplete.listen((_) {
      audioPlayer.state = PlayerState.completed;
      resetSelectedAudioIdx();
    });
    _durationSubscription = audioPlayer.onDurationChanged.listen((Duration d) {
      // print('onDurationChanged $d wkwkwk!!!');
      // audioPlayer.state = PlayerState.completed;
    });
    _positionSubscription = audioPlayer.onPositionChanged.listen((Duration p) {
      // print('onPositionChanged $p wkwkwk!!!');
      // audioPlayer.state = PlayerState.completed;
    });
    _playerStateSubscription =
        audioPlayer.onPlayerStateChanged.listen((PlayerState s) {});

    audioPlayer.onLog.listen((String message) {
      AudioLogger.log(message);
    }, onError: (Object e, [StackTrace? stackTrace]) {
      Get.snackbar('Information', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          margin: const EdgeInsets.all(8.0),
          backgroundColor: AppColors.error);
      AudioLogger.error(e, stackTrace);
    });
  }

  Future<void> onAudioPressed(int index, String audioSource) async {
    if (selectedAudioIdx == index &&
        (audioPlayer.state == PlayerState.playing ||
            audioPlayer.state == PlayerState.paused)) {
      // print('stop aja');
      await audioPlayer.stop();
      resetSelectedAudioIdx();
    } else {
      await audioPlayer.stop();
      try {
        final hasConnected = await Connectivity().checkConnectivity();
        if (hasConnected == ConnectivityResult.mobile ||
            hasConnected == ConnectivityResult.wifi) {
          await audioPlayer.play(UrlSource(audioSource));
          _selectedAudioIdx.value = index;
        } else {
          Get.snackbar(
              'Information', 'Play Audio must be connect to internet!!!',
              snackPosition: SnackPosition.BOTTOM,
              margin: const EdgeInsets.all(8.0),
              backgroundColor: AppColors.error);
        }
      } catch (e) {
        Get.snackbar('Information', 'Check your connection',
            snackPosition: SnackPosition.BOTTOM,
            margin: const EdgeInsets.all(8.0),
            backgroundColor: AppColors.error);
      }
    }
  }
}
