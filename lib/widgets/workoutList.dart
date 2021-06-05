import 'package:fitness_app/repo/workout.dart';
import 'package:flutter/material.dart';

class WorkoutListView extends StatefulWidget {
  WorkoutListView({ Key? key, required List<Workout> workouts}) : super(key: key);
  final List<Workout> workouts = [];
  @override
  _WorkoutListViewState createState() => _WorkoutListViewState();
}

class _WorkoutListViewState extends State<WorkoutListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Text("test")],
    );
  }
}