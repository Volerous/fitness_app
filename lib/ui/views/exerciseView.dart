import 'package:flutter/material.dart';
import 'package:fitness_app/repo/workout.dart';

class ExerciseTile extends StatelessWidget {
  const ExerciseTile({Key? key, required this.exercise}) : super(key: key);
  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text(exercise.title),
          subtitle: Text(exercise.setsByReps),
          trailing: Text(exercise.weight.toString()),
          leading: Checkbox(
            value: false,
            onChanged: null,
          ),
        ),
        if (exercise.hasRest())
          Center(
              heightFactor: 1.0,
              child: ElevatedButton(
                child: Text("rest ${exercise.restTime} seconds"),
                onPressed: null,
              ))
      ],
    );
  }
}
