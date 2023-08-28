import 'package:flutter/material.dart';

import 'to_do_list_item.dart';

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
