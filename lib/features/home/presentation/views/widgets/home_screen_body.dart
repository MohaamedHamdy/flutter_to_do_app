// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/core/utils/colors.dart';
import 'date.dart';
import 'first_text.dart';
import 'progress_list_item.dart';
import 'to_do_list_item.dart';
import 'to_do_see_all.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          const FirstTextWidget(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.011,
          ),
          DatePicker(
            DateTime.now(),
            width: 50,
            monthTextStyle: const TextStyle(
              fontSize: 0.0,
              color: Color.fromRGBO(6, 69, 83, 1),
            ),
            selectionColor: const Color.fromRGBO(6, 69, 83, 1),
          ),
          const ToDoSeeAllWidget(
            number: '7',
            text: 'To do',
          ),
          const ToDoListView(),
          const ToDoSeeAllWidget(
            number: '3',
            text: 'In Progress',
          ),
          InProgressListItem(index: 0),
        ],
      ),
    );
  }
}

class ToDoListView extends StatelessWidget {
  const ToDoListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return ToDoListItem(index: index);
          }),
    );
  }
}
