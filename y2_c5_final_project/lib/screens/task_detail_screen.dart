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
            Text(
              task.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  final updatedTask = Task(
                    title: task.title,
                    description: task.description,
                    isCompleted: !task.isCompleted,
                  );
                  onTaskUpdated(task.copyWith(isCompleted: !task.isCompleted));
                  Navigator.pop(context, updatedTask);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: const Text(
                  'Mark as Complete',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}