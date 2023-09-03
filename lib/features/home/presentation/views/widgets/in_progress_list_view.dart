import 'package:flutter/material.dart';

import 'progress_list_item.dart';

class InProgressListView extends StatelessWidget {
  const InProgressListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.202,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return InProgressListItem(index: index);
          }),
    );
  }
}
