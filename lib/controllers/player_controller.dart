import 'package:flutter/material.dart';

class PlayerController {
  static PlayerController instance = PlayerController();

  ValueNotifier<double> speedPlayBack = ValueNotifier<double>(1.0);
}
