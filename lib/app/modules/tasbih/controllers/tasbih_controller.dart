import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TasbihController extends GetxController {
  TextEditingController textEditingController = TextEditingController();
  final _target = 11.obs;
  set target(value) {
    _target.value = value;
    textEditingController.text = '$target';
  }

  int get target => _target.value;

  final _counter = 0.obs;
  set counter(value) {
    if (value >= 0 && value <= target) {
      _counter.value = value;
    }
  }

  int get counter => _counter.value;

  @override
  void onInit() {
    super.onInit();
    textEditingController.text = target.toString();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  onChangedTextField(String value) {
    if (value.isEmpty || value == '00') {
      target = 0;
    } else {
      target = int.parse(value);
    }
  }
}
