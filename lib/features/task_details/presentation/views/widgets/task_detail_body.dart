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
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 20.0,
      ),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FirstSection(),
              SecondSection(),
              ThirdSection(),
              FourthSection(),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          const ButtonsSection(),
        ],
      ),
    );
  }
}
