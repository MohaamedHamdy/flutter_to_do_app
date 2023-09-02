import 'package:flutter/material.dart';
import 'package:todo/core/utils/colors.dart';
import 'package:todo/core/widgets/pictures_circle.dart';

class ThirdSection extends StatelessWidget {
  const ThirdSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              height: 50,
              width: 50,
              child: const PictureCircle(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Created by Mohamed',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: MyColors.mainColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Opacity(
                  opacity: 0.5,
                  child: Text(
                    'project manager',
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 26,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Row(
                children: List.generate(
                  5,
                  (index) => Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(right: 8),
                    child: const PictureCircle(),
                  ),
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              CircleAvatar(
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    color: MyColors.mainColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
