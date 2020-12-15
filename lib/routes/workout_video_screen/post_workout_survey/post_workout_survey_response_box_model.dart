import 'dart:convert';

import 'package:tabletapp/models/workout_metadata.dart';
import 'package:http/http.dart' as http;

class PostWorkoutSurveyResponseBoxModel {
  final int overall;
  final int instructor;
  final int fun;
  final int difficulty;

  PostWorkoutSurveyResponseBoxModel(
      this.overall, this.instructor, this.fun, this.difficulty);

  static PostWorkoutSurveyResponseBoxModel initialize() {
    return PostWorkoutSurveyResponseBoxModel(5, 5, 5, 5);
  }

  // Retrieve workouts to surface on homepage from DB.
  static Future<List<WorkoutMetadata>> retrieveWorkouts() async {
    // print('\n\n\n\nTESTTESTTEST\n\n\n\n');
    var url = 'https://launchpad-demo.herokuapp.com/getAllWorkouts';
    var response = await http.get(url);
    // Parse result into a List of JSON in Map<string, dynamic> form.
    List<dynamic> allWorkoutsAsString = jsonDecode(response.body);
    List<WorkoutMetadata> list = [];
    allWorkoutsAsString.forEach((json) {
      // Convert Map<string, dynamic> to WorkoutDetails class
      WorkoutMetadata workoutDetails = WorkoutMetadata.fromJson(json);
      list.add(workoutDetails);
    });
    return list;
  }
}
