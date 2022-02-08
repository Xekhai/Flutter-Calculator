// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

// Begin custom action code
Future<String> divideNumbers(
  double number1,
  double number2,
) async {
  double number = num.parse((number1 / number2).toStringAsFixed(2));
  return ('$number');
}
