import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/core/utils/colors.dart';
import 'package:todo/core/widgets/custom_button.dart';
import 'package:todo/core/widgets/pictures_circle.dart';

class TaskDetailBody extends StatelessWidget {
  const TaskDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 20.0,
        top: 20.0,
        bottom: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FirstSection(),
          SecondSection(),
          ThirdSection(),
          ButtonsSection(),
        ],
      ),
    );
  }
}

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            width: MediaQuery.of(context).size.width * 0.42,
            height: MediaQuery.of(context).size.height * 0.058,
          ),
          CustomButton(
            width: MediaQuery.of(context).size.width * 0.42,
            height: MediaQuery.of(context).size.height * 0.058,
            text: 'in Progress',
            color: MyColors.myYellow,
          ),
        ],
      ),
    );
  }
}

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

class FirstSection extends StatelessWidget {
  const FirstSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Redesign Splash Screen',
          style: TextStyle(
            fontSize: 26,
            color: MyColors.mainColor,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            ProjectWidget(),
            DeadlineWidget(),
          ],
        ),
      ],
    );
  }
}

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
