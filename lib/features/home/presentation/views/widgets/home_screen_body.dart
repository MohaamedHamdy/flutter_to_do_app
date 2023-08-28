import 'package:flutter/material.dart';

import 'date.dart';
import 'first_text.dart';

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
          const ToDoSeeAllWidget(),
        ],
      ),
    );
  }
}

class ToDoSeeAllWidget extends StatelessWidget {
  const ToDoSeeAllWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'To do',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: const Color.fromRGBO(6, 69, 83, 1),
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20.0),
                height: 36,
                width: 24,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 173, 71, 1),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Text(
                    '7',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'See all',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
