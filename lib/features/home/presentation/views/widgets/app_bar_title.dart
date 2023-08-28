import 'package:flutter/material.dart';
import 'package:todo/core/utils/colors.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.7,
          child: Text(
            'Good morning, ',
            style: Theme.of(context).textTheme.bodyLarge!,
          ),
        ),
        Text(
          'Mohamed Hamdy!',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 16,
                color: MyColors.mainColor,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
