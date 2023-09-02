import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/core/utils/colors.dart';
import 'button_section.dart';
import 'first_section.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FirstSection(),
          SecondSection(),
          ThirdSection(),
          ButtonsSection(),
        ],
      ),
    );
  }
}
