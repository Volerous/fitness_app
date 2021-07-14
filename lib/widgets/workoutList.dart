import 'package:fitness_app/repo/workout.dart';
import 'package:flutter/material.dart';

class WorkoutListView extends StatefulWidget {
  WorkoutListView({Key? key, required List<Workout> workouts})
      : super(key: key);
  final List<Workout> workouts = [];
  @override
  _WorkoutListViewState createState() => _WorkoutListViewState();
}

class _WorkoutListViewState extends State<WorkoutListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (c, i) => Divider(thickness: 1.0, color: Colors.black),
      padding: const EdgeInsets.all(3.0),
      itemBuilder: (context, i) => ListTile(
        title: Text("$i"),
      ),
      itemCount: 3,
    );
  }
}
