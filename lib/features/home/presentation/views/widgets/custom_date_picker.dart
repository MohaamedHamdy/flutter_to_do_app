// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todo/features/home/presentation/views/widgets/date.dart';

// ignore: must_be_immutable
class CustomDatePicker extends DateWidget {
  bool isSelected = true;

  CustomDatePicker({
    required super.date,
    required super.monthTextStyle,
    required super.dayTextStyle,
    required super.dateTextStyle,
    super.selectionColor = Colors.white,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0, top: 4.0, bottom: 4.0),
      child: super.build(context),
    );
  }
}
