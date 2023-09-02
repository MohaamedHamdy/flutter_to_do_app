import 'package:flutter/material.dart';
import 'package:todo/core/utils/colors.dart';

import 'deadline_widget.dart';
import 'project_widget.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Redesign Splash Screen',
          style: TextStyle(
            fontSize: 26,
            color: MyColors.mainColor,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            ProjectWidget(),
            DeadlineWidget(),
          ],
        ),
      ],
    );
  }
}
