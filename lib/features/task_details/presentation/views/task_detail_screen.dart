import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/task_detail_body.dart';

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Task detail',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.grey,
                fontSize: 16,
              ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.penToSquare,
              size: 24,
            ),
          )
        ],
      ),
      body: const TaskDetailBody(),
    );
  }
}
