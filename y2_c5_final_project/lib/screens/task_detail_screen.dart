import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskDetailScreen extends StatelessWidget {
  final Task task;
  final Function(Task) onTaskUpdated;

  const TaskDetailScreen({super.key, required this.task,required this.onTaskUpdated});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 10),
            // TODO 8: Display the task description and add a "Complete" button
            // The button should update the task status and navigate back
            // add some padding and style to the description maybe use sizebox
            
          ],
        ),
      ),
    );
  }
}