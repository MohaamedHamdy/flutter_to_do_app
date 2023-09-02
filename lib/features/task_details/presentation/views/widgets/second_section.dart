import 'package:flutter/material.dart';
import 'package:todo/core/utils/colors.dart';

class SecondSection extends StatelessWidget {
  const SecondSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: Text(
            'Description',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: MyColors.mainColor,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 20.0),
          child: Text(
            'You need to make a Splash screen for the applicaton, Style: minimalism. Use one primary color and one accent color. You can use illustrations, 3D animations and other things to attract attention ',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black.withOpacity(0.5),
                ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30, bottom: 30, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Members',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: MyColors.mainColor,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const Opacity(
                opacity: 0.6,
                child: Text(
                  '(7)',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
