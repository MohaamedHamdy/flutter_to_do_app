import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/core/utils/colors.dart';

class ToDoListItem extends StatelessWidget {
  final int index;

  final List colors = [
    Colors.white,
    MyColors.myYellow,
  ];

  final List mainTextColors = [
    MyColors.mainColor,
    Colors.white,
  ];

  final List titleColors = [
    Colors.black.withOpacity(0.5),
    Colors.white.withOpacity(0.7),
  ];

  final List iconColors = [
    MyColors.myYellow,
    MyColors.myWhite,
  ];

  ToDoListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: colors[index % colors.length],
          padding: const EdgeInsets.only(right: 10),
          // elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Snapchat',
                        style: TextStyle(
                          color: titleColors[index % titleColors.length],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.penToSquare,
                          color: iconColors[index % iconColors.length],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Redesign',
                    style: TextStyle(
                      fontSize: 22,
                      color: mainTextColors[index % mainTextColors.length],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Splash screen',
                    style: TextStyle(
                      fontSize: 22,
                      color: mainTextColors[index % mainTextColors.length],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                'till Mon, 7 March',
                style: TextStyle(
                  color: titleColors[index % titleColors.length],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
