// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:todo/core/utils/colors.dart';

class HomeNavBar extends StatefulWidget {
  final int currentIndex;

  const HomeNavBar({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _index = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return DotNavigationBar(
      currentIndex: _index,
      onTap: (p0) {
        setState(() {
          _index = p0;
        });
      },
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
