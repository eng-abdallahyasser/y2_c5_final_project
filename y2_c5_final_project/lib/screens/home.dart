import 'package:flutter/material.dart';
import 'package:y2_c5_final_project/models/task.dart';
import 'package:y2_c5_final_project/screens/task_detail_screen.dart';
import 'add_task_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // TODO 2: Create a List<Task> to store tasks
  // Initialize with at least 2 sample tasks
  List<Task> tasks = [
    Task(title: 'Buy groceries', description: 'Milk, eggs, bread'),
    Task(title: 'Do homework', description: 'Math assignment due tomorrow'),
  ];
  void _updateTask(Task updatedTask) {
    setState(() {
      final index = tasks.indexWhere((t) => t.title == updatedTask.title);
      if (index != -1) {
        tasks[index] = updatedTask;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My To-Do List')),
      body: ListView.builder(
        itemCount:
            tasks.length, // TODO 3: Update itemCount with actual task count
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Task Title ${tasks[index].title}',
                    ), // TODO 4: Display actual task title
                    subtitle: Text(
                      'Task Description${tasks[index].description}',
                    ), // TODO 5: Display actual description
                    onTap: () {
                      // TODO 6: Navigate to TaskDetailScreen when a task is tapped
                      // Pass the selected task as an argument
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TaskDetailScreen(
                            task: tasks[index],
                            onTaskUpdated: _updateTask,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: tasks[index].isCompleted ? Colors.green : Colors.grey,
                ),
                const SizedBox(width: 10),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newTask = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddTaskScreen()),
          );
          if (newTask != null) {
            setState(() {
              tasks.add(newTask as Task);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
