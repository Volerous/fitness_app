import 'package:flutter/material.dart';
import 'package:fitness_app/repo/workout.dart';

class ExerciseTile extends StatefulWidget {
  const ExerciseTile({Key? key, required this.exercise, this.active = false})
      : super(key: key);
  final Exercise exercise;
  final bool active;
  @override
  _ExerciseTileState createState() => _ExerciseTileState();
}

class _ExerciseTileState extends State<ExerciseTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text(widget.exercise.title),
          subtitle: Text(widget.exercise.setsByReps),
          trailing: Text(widget.exercise.weight.toString()),
          leading: widget.active
              ? Checkbox(
                  value: widget.exercise.complete,
                  onChanged: (v) {},
                )
              : null,
          onTap: () {
            setState(() {
              widget.exercise.complete = !widget.exercise.complete;
            });
          },
        ),
        if (widget.exercise.hasRest())
          Center(
            heightFactor: 1.0,
            child: ElevatedButton(
              child: Text("rest ${widget.exercise.restTime} seconds"),
              onPressed: () {},
            ),
          ),
      ],
    );
  }
}
