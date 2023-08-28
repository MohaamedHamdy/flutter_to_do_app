import 'package:flutter/material.dart';
import 'package:todo/core/utils/constants.dart';

class ProfilePictureAppBar extends StatelessWidget {
  const ProfilePictureAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(
              '${Constants.assetsPath}me.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
