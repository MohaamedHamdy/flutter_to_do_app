import 'package:flutter/material.dart';
import 'button_section.dart';
import 'first_section.dart';
import 'fourth_section.dart';
import 'second_section.dart';
import 'third_section.dart';

class TaskDetailBody extends StatelessWidget {
  const TaskDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 20.0,
        top: 20.0,
        bottom: 30.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FirstSection(),
              SecondSection(),
              ThirdSection(),
              FourthSection(),
            ],
          ),
          ButtonsSection(),
        ],
      ),
    );
  }
}
