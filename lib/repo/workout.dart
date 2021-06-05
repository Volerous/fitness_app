class Weight {
  int absolute = 0;
  int percent = 0;
}

class Exercise {
  int sets = 0;
  num weight = 0.0;
  int reps = 0;
  bool complete = false;
  Exercise(
      {this.sets = 0, this.weight = 0.0, this.complete = false, this.reps = 0});
}

class Workout {
  List<Exercise> exercises = [];
}
