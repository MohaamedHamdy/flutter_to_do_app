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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Redesign Splash Screen',
          style: TextStyle(
            fontSize: 26,
            color: MyColors.mainColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.026,
        ),
        const Row(
          children: [
            ProjectWidget(),
            DeadlineWidget(),
          ],
        ),
      ],
    );
  }
}
