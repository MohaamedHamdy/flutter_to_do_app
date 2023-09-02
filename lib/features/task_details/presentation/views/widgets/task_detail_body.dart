import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/core/utils/colors.dart';

class TaskDetailBody extends StatelessWidget {
  const TaskDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 20.0,
        bottom: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Redesign Splash Screen',
            style: TextStyle(
              fontSize: 26,
              color: MyColors.mainColor,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              ProjectWidget(),
              DeadlineWidget(),
            ],
          ),
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
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'Members',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: MyColors.mainColor,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class DeadlineWidget extends StatelessWidget {
  const DeadlineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.calendar_month_rounded,
                color: MyColors.myYellow,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Deadline',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'Mon, 7 March',
                style: TextStyle(
                  color: MyColors.mainColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            child: Center(
              // child: Icon(
              //   FontAwesomeIcons.snapchat,
              // ),
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://i.pinimg.com/originals/b0/74/ac/b074acdacc801e9b57930b31d6655fb8.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Project',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'SnapChat',
                style: TextStyle(
                  color: MyColors.mainColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
