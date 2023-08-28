// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ToDoSeeAllWidget extends StatelessWidget {
  final String text;
  final String number;

  const ToDoSeeAllWidget({
    Key? key,
    required this.text,
    required this.number,
  }) : super(key: key);

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
                text,
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
                    number,
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
