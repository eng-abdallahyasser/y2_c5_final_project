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
  

  void _updateTask(Task updatedTask) {
    setState(() {
      final index = [/** */].indexWhere((t) => t.title == updatedTask.title);
      if (index != -1) {
        // TODO 3: Update the task in the list
        // Use the index to find the task in the list and update it
        
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My To-Do List')),
      body: ListView.builder(
        itemCount:
            0, // TODO 4: Update itemCount with actual task count
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Task Title ',
                    ), // TODO 5: Display actual task title
                    subtitle: Text(
                      'Task Description',
                    ), // TODO 6: Display actual description
                    onTap: () {
                      // TODO 7: Navigate to TaskDetailScreen when a task is tapped
                      // Pass the selected task as an argument and handle updates using _updateTask
                      
                    },
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  // TODO 10: Change icon color based on task completion status
                  // Use the isCompleted property of the task to determine the color
                  //  color: tasks[index].isCompleted ? Colors.green : Colors.grey,
                  color:true  ? Colors.green : Colors.grey, 
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
              // TODO 11: Add the new task to the tasks list
              // add the new task to the tasks list
              
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
