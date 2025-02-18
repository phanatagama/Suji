import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:suji/app/widgets/custom_snackbar.dart';
import 'package:suji/core/values/constant.dart';

class AudioController extends GetxController {
  Connectivity connectivity;
  final AudioPlayer _audioPlayer = AudioPlayer()
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
  AudioController({required this.connectivity});

  @override
  void onInit() {
    super.onInit();
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
  Rx<Duration?> duration = Duration.zero.obs;
  Rx<Duration?> position = Duration.zero.obs;

  void setupAudioPlayer() {
    AudioLogger.logLevel = AudioLogLevel.error;

    _playerCompleteSubscription = audioPlayer.onPlayerComplete.listen((_) {
      audioPlayer.state = PlayerState.completed;
      resetSelectedAudioIdx();
    });
    _durationSubscription = audioPlayer.onDurationChanged.listen((Duration d) {
      duration.value = d;
    });
    _positionSubscription = audioPlayer.onPositionChanged.listen((Duration p) {
      position.value = p;
    });
    _playerStateSubscription =
        audioPlayer.onPlayerStateChanged.listen((PlayerState s) {});

    audioPlayer.onLog.listen((String message) {
      AudioLogger.log(message);
    }, onError: (Object e, [StackTrace? stackTrace]) {
      AudioLogger.error(e, stackTrace);
    });
  }

  Future<void> onAudioPressed(int index, String audioSource) async {
    if (selectedAudioIdx == index &&
        (audioPlayer.state == PlayerState.playing ||
            audioPlayer.state == PlayerState.paused)) {
      await audioPlayer.stop();
      resetSelectedAudioIdx();
    } else {
      await audioPlayer.stop();
      try {
        final hasConnected = await connectivity.checkConnectivity();
        if (hasConnected == ConnectivityResult.mobile ||
            hasConnected == ConnectivityResult.wifi) {
          await audioPlayer.play(UrlSource(audioSource));
          _selectedAudioIdx.value = index;
        } else {
          showErrorMessage('audio_play_internet'.tr);
        }
      } catch (e) {
        showErrorMessage(AppString.socketException);
      }
    }
  }
}
