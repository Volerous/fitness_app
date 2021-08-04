class WeightType {
  final _value;
  const WeightType._internal(this._value);
  toString() => '$_value';

  static const PERCENT = const WeightType._internal('%1RM');
  static const KILOS = const WeightType._internal('kg');
  static const POUNDS = const WeightType._internal('lbs');
}

class Weight {
  num value;
  WeightType type;
  Weight({required this.value, required this.type});
  String toString() => "$value ${type.toString()}";
}

class Exercise {
  Weight? weight;
  int reps;
  bool complete;
  String title;
  int restTime;
  String get setsByReps => "$reps reps";

  Exercise(
      {this.weight,
      this.complete = false,
      this.reps = 0,
      this.title = "",
      this.restTime = 60});

  bool hasRest() {
    return restTime > 0;
  }
}

class Step {}

class Workout {
  List<Exercise> exercises = [];
  String name;
  Workout({this.exercises = const [], required this.name});
}

List<Workout> testWorkouts = [
  Workout(name: "Regular", exercises: [
    Exercise(
        title: "Curls",
        weight: Weight(value: 10.0, type: WeightType.PERCENT),
        reps: 12),
    Exercise(
        title: "Curls",
        weight: Weight(value: 10.0, type: WeightType.PERCENT),
        reps: 12),
    Exercise(
        title: "Curls",
        weight: Weight(value: 10.0, type: WeightType.PERCENT),
        reps: 12),
  ]),
  Workout(name: "StrongLifts", exercises: [
    Exercise(
        title: "Curls",
        // sets: 5,
        weight: Weight(value: 10.0, type: WeightType.KILOS),
        reps: 5)
  ]),
];
