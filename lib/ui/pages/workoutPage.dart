import 'package:fitness_app/repo/workout.dart';
import 'package:fitness_app/ui/views/exerciseView.dart';
import 'package:flutter/material.dart';

class WorkoutViewPage extends StatefulWidget {
  const WorkoutViewPage({Key? key, required this.workout}) : super(key: key);
  final Workout workout;
  @override
  _WorkoutViewPageState createState() => _WorkoutViewPageState();
}

class _WorkoutViewPageState extends State<WorkoutViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.workout.name),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: widget.workout.exercises.length,
          itemBuilder: (c, i) =>
              ExerciseTile(exercise: widget.workout.exercises[i]),
        ),
      ),
    );
  }
}
