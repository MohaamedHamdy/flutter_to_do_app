import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/core/utils/colors.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DotNavigationBar(
      currentIndex: 0,
      onTap: (p0) {},
      dotIndicatorColor: Colors.transparent,
      selectedItemColor: MyColors.mainColor,
      unselectedItemColor: MyColors.mainColor.withOpacity(0.5),
      items: [
        DotNavigationBarItem(
          icon: const Icon(Icons.menu),
        ),
        DotNavigationBarItem(
          icon: const Icon(FontAwesomeIcons.chartSimple),
        ),
        DotNavigationBarItem(
          icon: FloatingActionButton(
            onPressed: () {},
            mini: true,
            backgroundColor: MyColors.myYellow,
            child: const Icon(Icons.add),
          ),
        ),
        DotNavigationBarItem(
          icon: const Icon(FontAwesomeIcons.calendarDay),
        ),
        DotNavigationBarItem(
          icon: const Icon(
            FontAwesomeIcons.solidUser,
          ),
        ),
      ],
    );
  }
}
