import 'package:tabletapp/enums/mods_enum.dart';
import 'package:tabletapp/models/exercise_model.dart';
import 'package:tabletapp/models/workout_metadata.dart';
import 'package:tabletapp/models/workout_details.dart';

import 'models/exercise_score_model.dart';
import 'models/exercise_set_model.dart';
import 'models/user_model.dart';
import 'models/workout_set_model.dart';
import 'routes/workout_video_screen/leaderboard/leaderboard_entry_model.dart';
import 'routes/workout_video_screen/leaderboard/leaderboard_model.dart';
import 'routes/workout_video_screen/workout_video_screen_state.dart';

class PlaceholderValues {
  WorkoutDetails recommendedWorkoutDetails = WorkoutDetails(
    [
      ExerciseModel(intensity: 1, name: "Bulgarian Split Squat"),
    ],
    title: "Speed Kills",
    trainer: "Doug Goldstein",
    athlete: "Brooks Goldstein",
    modsList: [ModsEnum.plio],
    workoutId: "1234",
    duration: 33,
  );
WorkoutDetails workoutDetails1 = WorkoutDetails(
    [
      ExerciseModel(intensity: 1, name: "Bulgarian Split Squat"),
    ],
    title: "Speed Kills",
    trainer: "Doug Goldstein",
    athlete: "Brooks Goldstein",
    modsList: [ModsEnum.plio],
    workoutId: "1234",
    duration: 33,
  );
WorkoutDetails workoutDetails2 = WorkoutDetails(
    [
      ExerciseModel(intensity: 1, name: "Bulgarian Split Squat"),
    ],
    title: "Speed Kills",
    trainer: "Doug Goldstein",
    athlete: "Brooks Goldstein",
    modsList: [ModsEnum.plio],
    workoutId: "1234",
    duration: 33,
  );
WorkoutDetails workoutDetails3 = WorkoutDetails(
    [
      ExerciseModel(intensity: 1, name: "Bulgarian Split Squat"),
    ],
    title: "Speed Kills",
    trainer: "Doug Goldstein",
    athlete: "Brooks Goldstein",
    modsList: [ModsEnum.plio],
    workoutId: "1234",
    duration: 33,
  );
  List<WorkoutSetModel> workoutSets = [
    WorkoutSetModel(
      exerciseSetDefinition: ExerciseSetModel(
          exerciseName: "Banded 90 Degree Y-Rotations",
          targetReps: 5,
          isRest: false),
      videoTimeStamp: 0,
      isRest: false,
      videoDuration: 7000,
    ),
    WorkoutSetModel(
      exerciseSetDefinition: ExerciseSetModel(
          exerciseName: "Banded Tricep Kickbacks",
          targetReps: 10,
          isRest: false),
      videoTimeStamp: 7000,
      isRest: false,
      videoDuration: 8500,
    ),
    WorkoutSetModel(
      exerciseSetDefinition: ExerciseSetModel(
          exerciseName: "Front Elevated Mountain Climbers",
          targetReps: 30,
          isRest: false),
      videoTimeStamp: 15500,
      isRest: false,
      videoDuration: 9000,
    ),
    WorkoutSetModel(
      exerciseSetDefinition: ExerciseSetModel(
          exerciseName: "Plio Pushup Burnouts", targetReps: 30, isRest: false),
      videoTimeStamp: 24500,
      isRest: false,
      videoDuration: 10500,
    ),
    WorkoutSetModel(
      exerciseSetDefinition: ExerciseSetModel(
          exerciseName: "Spider Pushups", targetReps: 10, isRest: false),
      videoTimeStamp: 35000,
      isRest: false,
      videoDuration: 26000,
    ),
  ];

  LeaderboardModel bandedTricepKickbacksLeaderboard = LeaderboardModel(
    userEntry: LeaderboardEntryModel(
        user: UserModel(
            firstName: "Brooks", lastName: "Goldstein", username: "so_cute"),
        exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "Bulgarian Split Squats",
            targetReps: 10,
            isRest: false),
        score: ExerciseScoreModel(
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "Bulgarian Split Squats",
                targetReps: 10,
                isRest: false),
            goodReps: 0,
            badReps: 0,
            value: 0)),
    userPosition: 0,
    nextScoreToBeat: 1,
    leaderboardEntries: [
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Bulgarian Split Squats",
              targetReps: 10,
              isRest: false),
          user: UserModel(
              username: "jason?", firstName: "Jason", lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 0,
            badReps: 1,
            value: 1,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "Bulgarian Split Squats",
                targetReps: 10,
                isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Bulgarian Split Squats",
              targetReps: 10,
              isRest: false),
          user: UserModel(
              username: "Leeeeeee", firstName: "Lee", lastName: "Goldstein"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 0,
            value: 3,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "Bulgarian Split Squats",
                targetReps: 10,
                isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Bulgarian Split Squats",
              targetReps: 10,
              isRest: false),
          user: UserModel(
              username: "no_knuckles",
              firstName: "Ellie",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 3,
            value: 6,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "Bulgarian Split Squats",
                targetReps: 10,
                isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Bulgarian Split Squats",
              targetReps: 10,
              isRest: false),
          user: UserModel(
              username: "beybladessss",
              firstName: "Jack",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 2,
            badReps: 7,
            value: 9,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "Bulgarian Split Squats",
                targetReps: 10,
                isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Bulgarian Split Squats",
              targetReps: 10,
              isRest: false),
          user: UserModel(
              username: "killa_strotha",
              firstName: "Ann",
              lastName: "Strother"),
          score: ExerciseScoreModel(
            goodReps: 10,
            badReps: 3,
            value: 13,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "Bulgarian Split Squats",
                targetReps: 10,
                isRest: false),
          )),
    ],
  );
  LeaderboardModel bandedYRotationLeaderboard = LeaderboardModel(
    userEntry: LeaderboardEntryModel(
        user: UserModel(
            firstName: "Brooks", lastName: "Goldstein", username: "so_cute"),
        exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
        score: ExerciseScoreModel(
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
            goodReps: 0,
            badReps: 0,
            value: 0)),
    userPosition: 0,
    nextScoreToBeat: 1,
    leaderboardEntries: [
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          user: UserModel(
              username: "jason?", firstName: "Jason", lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 0,
            badReps: 1,
            value: 1,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          user: UserModel(
              username: "Leeeeeee", firstName: "Lee", lastName: "Goldstein"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 0,
            value: 3,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          user: UserModel(
              username: "no_knuckles",
              firstName: "Ellie",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 3,
            value: 6,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          user: UserModel(
              username: "beybladessss",
              firstName: "Jack",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 4,
            badReps: 5,
            value: 7,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          user: UserModel(
              username: "killa_strotha",
              firstName: "Ann",
              lastName: "Strother"),
          score: ExerciseScoreModel(
            goodReps: 10,
            badReps: 3,
            value: 13,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          )),
    ],
  );
  LeaderboardModel frontElevatedMountainClimbersLeaderboard = LeaderboardModel(
    userEntry: LeaderboardEntryModel(
        user: UserModel(
            firstName: "Brooks", lastName: "Goldstein", username: "so_cute"),
        exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
        score: ExerciseScoreModel(
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
            goodReps: 0,
            badReps: 0,
            value: 0)),
    userPosition: 0,
    nextScoreToBeat: 1,
    leaderboardEntries: [
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          user: UserModel(
              username: "jason?", firstName: "Jason", lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 0,
            badReps: 1,
            value: 1,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          user: UserModel(
              username: "Leeeeeee", firstName: "Lee", lastName: "Goldstein"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 0,
            value: 3,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          user: UserModel(
              username: "no_knuckles",
              firstName: "Ellie",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 3,
            value: 6,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          user: UserModel(
              username: "beybladessss",
              firstName: "Jack",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 4,
            badReps: 5,
            value: 7,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          user: UserModel(
              username: "killa_strotha",
              firstName: "Ann",
              lastName: "Strother"),
          score: ExerciseScoreModel(
            goodReps: 10,
            badReps: 3,
            value: 13,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          )),
    ],
  );

  LeaderboardModel plioPushupBurnoutsLeaderboard = LeaderboardModel(
    userEntry: LeaderboardEntryModel(
        user: UserModel(
            firstName: "Brooks", lastName: "Goldstein", username: "so_cute"),
        exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
        score: ExerciseScoreModel(
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
            goodReps: 0,
            badReps: 0,
            value: 0)),
    userPosition: 0,
    nextScoreToBeat: 1,
    leaderboardEntries: [
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          user: UserModel(
              username: "jason?", firstName: "Jason", lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 0,
            badReps: 1,
            value: 1,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          user: UserModel(
              username: "Leeeeeee", firstName: "Lee", lastName: "Goldstein"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 0,
            value: 3,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          user: UserModel(
              username: "no_knuckles",
              firstName: "Ellie",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 3,
            value: 6,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          user: UserModel(
              username: "beybladessss",
              firstName: "Jack",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 4,
            badReps: 5,
            value: 7,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          user: UserModel(
              username: "killa_strotha",
              firstName: "Ann",
              lastName: "Strother"),
          score: ExerciseScoreModel(
            goodReps: 10,
            badReps: 3,
            value: 13,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "180 Squat Jumps", targetReps: 10, isRest: false),
          )),
    ],
  );
  LeaderboardModel spiderPushupsLeaderboard = LeaderboardModel(
    userEntry: LeaderboardEntryModel(
        user: UserModel(
            firstName: "Brooks", lastName: "Goldstein", username: "so_cute"),
        exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "Barbell Back Squat", targetReps: 10, isRest: false),
        score: ExerciseScoreModel(
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "Barbell Back Squat",
                targetReps: 10,
                isRest: false),
            goodReps: 0,
            badReps: 0,
            value: 0)),
    userPosition: 0,
    nextScoreToBeat: 1,
    leaderboardEntries: [
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Barbell Back Squat",
              targetReps: 10,
              isRest: false),
          user: UserModel(
              username: "jason?", firstName: "Jason", lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 0,
            badReps: 1,
            value: 1,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "Barbell Back Squat",
                targetReps: 10,
                isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Barbell Back Squat",
              targetReps: 10,
              isRest: false),
          user: UserModel(
              username: "Leeeeeee", firstName: "Lee", lastName: "Goldstein"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 0,
            value: 3,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "Barbell Back Squat",
                targetReps: 10,
                isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Barbell Back Squat",
              targetReps: 10,
              isRest: false),
          user: UserModel(
              username: "no_knuckles",
              firstName: "Ellie",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 3,
            value: 6,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "Barbell Back Squat",
                targetReps: 10,
                isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Barbell Back Squat",
              targetReps: 10,
              isRest: false),
          user: UserModel(
              username: "beybladessss",
              firstName: "Jack",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 4,
            badReps: 5,
            value: 7,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "Barbell Back Squat",
                targetReps: 10,
                isRest: false),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Barbell Back Squat",
              targetReps: 10,
              isRest: false),
          user: UserModel(
              username: "killa_strotha",
              firstName: "Ann",
              lastName: "Strother"),
          score: ExerciseScoreModel(
            goodReps: 10,
            badReps: 3,
            value: 13,
            exerciseSetDefinition: ExerciseSetModel(
                exerciseName: "Barbell Back Squat",
                targetReps: 10,
                isRest: false),
          )),
    ],
  );

  List<LeaderboardModel> getleaderboards() {
    return [
      bandedYRotationLeaderboard,
      bandedTricepKickbacksLeaderboard,
      frontElevatedMountainClimbersLeaderboard,
      plioPushupBurnoutsLeaderboard,
      spiderPushupsLeaderboard
    ];
  }

  WorkoutVideoScreenState getWorkoutState() {
    return WorkoutVideoScreenState(
      workoutNotification: null,
      showNotification: false,
      workoutMetadata: WorkoutMetadata(
        workoutDetails: WorkoutDetails(
          [ ExerciseModel(intensity: 1, name: "Jump!")],
          title: "Get you a 50 inch vertical today!",
          trainer: "Doug Goldstein",
          athlete: "Brooks Goldstein",
          modsList: [ModsEnum.kids],
          workoutId: "123456",
          duration: 62,
        ),
        workoutSets: workoutSets,
      ),
      leaderboards: getleaderboards(),
    );
  }

  var leaderboard = LeaderboardModel(
      userPosition: 0,
      nextScoreToBeat: 5,
      userEntry: LeaderboardEntryModel(
          user: UserModel(username: 'gabbyyyy'),
          score: ExerciseScoreModel(goodReps: 0, badReps: 0)),
      leaderboardEntries: [
        LeaderboardEntryModel(
            user: UserModel(
                firstName: 'Ellie',
                lastName: 'Abromaitis',
                username: 'no_knucks'),
            score: ExerciseScoreModel(
              exerciseSetDefinition: ExerciseSetModel(
                  exerciseName: 'Split Squat', targetReps: 10, isRest: false),
              value: 5,
              goodReps: 0,
              badReps: 5,
            )),
        LeaderboardEntryModel(
            user: UserModel(
                firstName: 'Jack',
                lastName: 'Abromaitis',
                username: 'beyblades!!'),
            score: ExerciseScoreModel(
                exerciseSetDefinition: ExerciseSetModel(
                    exerciseName: 'Split Squat', targetReps: 10, isRest: false),
                value: 7,
                goodReps: 2,
                badReps: 5)),
        LeaderboardEntryModel(
            user: UserModel(
                firstName: 'Doug', lastName: 'Goldstein', username: 'dougie'),
            score: ExerciseScoreModel(
              exerciseSetDefinition: ExerciseSetModel(
                  exerciseName: 'Split Squat', targetReps: 10, isRest: false),
              value: 20,
              goodReps: 10,
              badReps: 0,
            )),
        LeaderboardEntryModel(
            user: UserModel(
                firstName: 'Ann',
                lastName: 'Abromaitis',
                username: 'killa_strotha'),
            score: ExerciseScoreModel(
                exerciseSetDefinition: ExerciseSetModel(
                    exerciseName: 'Split Squat', targetReps: 10, isRest: false),
                value: 30,
                goodReps: 2,
                badReps: 10)),
        LeaderboardEntryModel(
            user: UserModel(
                firstName: 'Lee',
                lastName: 'Goldstein',
                username: 'lee_loves_me'),
            score: ExerciseScoreModel(
                exerciseSetDefinition: ExerciseSetModel(
                    exerciseName: 'Split Squat', targetReps: 10, isRest: false),
                value: 66,
                goodReps: 10,
                badReps: 3)),
        LeaderboardEntryModel(
            user: UserModel(
                firstName: 'Candice',
                lastName: 'Goldstein',
                username: 'masta_chef'),
            score: ExerciseScoreModel(
                exerciseSetDefinition: ExerciseSetModel(
                    exerciseName: 'Split Squat', targetReps: 10, isRest: false),
                value: 130,
                goodReps: 7,
                badReps: 10)),
        LeaderboardEntryModel(
            user: UserModel(
                firstName: 'Brooks',
                lastName: 'Goldstein',
                username: 'so_cute'),
            score: ExerciseScoreModel(
              exerciseSetDefinition: ExerciseSetModel(
                  exerciseName: 'Split Squat', targetReps: 10, isRest: false),
              value: 1000,
              goodReps: 5,
              badReps: 15,
            )),
      ]);
}
