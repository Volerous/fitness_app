import 'package:fitness_app/ui/pages/workoutPage.dart';
import 'package:fitness_app/repo/workout.dart';
import 'package:flutter/material.dart';

class WorkoutListView extends StatefulWidget {
  WorkoutListView({Key? key, required this.workouts}) : super(key: key);
  late final List<Workout> workouts;
  @override
  _WorkoutListViewState createState() {
    print(this.workouts);
    return _WorkoutListViewState();
  }
}

class _WorkoutListViewState extends State<WorkoutListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (c, i) => Divider(thickness: 1.0, color: Colors.black),
      padding: const EdgeInsets.all(3.0),
      itemCount: widget.workouts.length,
      itemBuilder: (context, i) => ListTile(
        title: Text("${widget.workouts[i].name}"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (c) => WorkoutViewPage(workout: widget.workouts[i]),
            ),
          );
        },
      ),
    );
  }
}
