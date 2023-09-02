import 'package:flutter/material.dart';
import 'package:todo/core/utils/constants.dart';

class PictureCircle extends StatelessWidget {
  const PictureCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            '${Constants.assetsPath}me.jpg',
          ),
        ),
      ),
    );
  }
}
