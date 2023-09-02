import 'package:flutter/material.dart';
import 'package:todo/core/widgets/pictures_circle.dart';

class ProfilePictureAppBar extends StatelessWidget {
  const ProfilePictureAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: PictureCircle(),
    );
  }
}
