import 'package:fitness_app/repo/workout.dart';
import 'package:fitness_app/ui/views/exerciseView.dart';
import 'package:flutter/material.dart';

class WorkoutViewPage extends StatefulWidget {
  WorkoutViewPage({Key? key, required this.workout})
      : expanded = List<bool>.filled(workout.rotations.length, false),
        super(key: key);
  final Workout workout;
  final List<bool> expanded;
  @override
  _WorkoutViewPageState createState() => _WorkoutViewPageState();
}

class _WorkoutViewPageState extends State<WorkoutViewPage> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.workout.name),
      ),
      body: SingleChildScrollView(
        child: _buildExpansionList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            active = !active;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

  ExpansionPanelList _buildExpansionList() {
    return ExpansionPanelList(
      expansionCallback: (idx, state) {
        setState(() {
          widget.expanded[idx] = !state;
        });
      },
      children: widget.workout.rotations.entries
          .map<ExpansionPanel>(
            (v) => ExpansionPanel(
              canTapOnHeader: true,
              body: ListView.builder(
                shrinkWrap: true,
                itemCount: v.value.length,
                itemBuilder: (c, i) =>
                    ExerciseTile(exercise: v.value[i], active: active),
              ),
              headerBuilder: (ctx, state) => ListTile(
                title: Text("${v.key}"),
              ),
              isExpanded: widget.expanded[
                  widget.workout.rotations.keys.toList().indexOf(v.key)],
            ),
          )
          .toList(),
    );
  }
}
