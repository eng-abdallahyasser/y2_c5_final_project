import 'package:flutter/material.dart';
import 'package:y2_c5_final_project/screens/add_task_screen.dart';
import 'package:y2_c5_final_project/screens/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter To-Do App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
      // TODO 1: Add routes for AddTaskScreen 
      // Hint: Use (context) => const AddTaskScreen()
      
    );
  }
}
