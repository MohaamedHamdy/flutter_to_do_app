// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'date.dart';
import 'first_text.dart';
import 'in_progress_list_view.dart';
import 'to_do_list_view.dart';
import 'to_do_see_all.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const FirstTextWidget(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
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
          const InProgressListView(),
        ],
      ),
    );
  }
}
