import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/core/utils/colors.dart';

class InProgressListItem extends StatefulWidget {
  final int index;

  const InProgressListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<InProgressListItem> createState() => _InProgressListItemState();
}

class _InProgressListItemState extends State<InProgressListItem> {
  double value = 0.0;

  final List colors = [
    MyColors.mainColor,
    MyColors.myWhite,
  ];

  final List mainTextColors = [
    Colors.white,
    MyColors.mainColor,
  ];

  final List titleColors = [
    Colors.white.withOpacity(0.7),
    Colors.black.withOpacity(0.5),
  ];

  final List iconColors = [
    MyColors.myYellow,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.78,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: colors[widget.index % colors.length],
          padding: const EdgeInsets.only(right: 10),
          // elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 20, bottom: 24),
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
                          color: titleColors[widget.index % titleColors.length],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.ellipsis,
                          color: iconColors[widget.index % iconColors.length],
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Redesign splash screen',
                    style: TextStyle(
                      fontSize: 22,
                      color:
                          mainTextColors[widget.index % mainTextColors.length],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Slider(
                    activeColor: MyColors.myYellow,
                    inactiveColor: const Color.fromARGB(255, 255, 208, 151),
                    value: value,
                    min: 0,
                    max: 100,
                    onChanged: (val) {
                      setState(
                        () {
                          value = val;
                        },
                      );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'till Mon, 7 March 2023',
                    style: TextStyle(
                      color: titleColors[widget.index % titleColors.length],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      '${value.ceil()} %',
                      style: TextStyle(
                        color: mainTextColors[
                            widget.index % mainTextColors.length],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
