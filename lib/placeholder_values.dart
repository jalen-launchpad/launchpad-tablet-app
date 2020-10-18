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
  LeaderboardModel bandedTricepKickbacksLeaderboard = LeaderboardModel(
    userEntry: LeaderboardEntryModel(
        user: UserModel(
            firstName: "Brooks", lastName: "Goldstein", username: "so_cute"),
        exerciseSetDefinition: ExerciseSetModel(
          exerciseName: "Bulgarian Split Squats",
          targetReps: 10,
        ),
        score: ExerciseScoreModel(
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Bulgarian Split Squats",
              targetReps: 10,
            ),
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
          ),
          user: UserModel(
              username: "jason?", firstName: "Jason", lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 0,
            badReps: 1,
            value: 1,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Bulgarian Split Squats",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "Bulgarian Split Squats",
            targetReps: 10,
          ),
          user: UserModel(
              username: "Leeeeeee", firstName: "Lee", lastName: "Goldstein"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 0,
            value: 3,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Bulgarian Split Squats",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "Bulgarian Split Squats",
            targetReps: 10,
          ),
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
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "Bulgarian Split Squats",
            targetReps: 10,
          ),
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
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "Bulgarian Split Squats",
            targetReps: 10,
          ),
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
            ),
          )),
    ],
  );
  LeaderboardModel bandedYRotationLeaderboard = LeaderboardModel(
    userEntry: LeaderboardEntryModel(
        user: UserModel(
            firstName: "Brooks", lastName: "Goldstein", username: "so_cute"),
        exerciseSetDefinition: ExerciseSetModel(
          exerciseName: "180 Squat Jumps",
          targetReps: 10,
        ),
        score: ExerciseScoreModel(
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
            goodReps: 0,
            badReps: 0,
            value: 0)),
    userPosition: 0,
    nextScoreToBeat: 1,
    leaderboardEntries: [
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps",
            targetReps: 10,
          ),
          user: UserModel(
              username: "jason?", firstName: "Jason", lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 0,
            badReps: 1,
            value: 1,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps",
            targetReps: 10,
          ),
          user: UserModel(
              username: "Leeeeeee", firstName: "Lee", lastName: "Goldstein"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 0,
            value: 3,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps",
            targetReps: 10,
          ),
          user: UserModel(
              username: "no_knuckles",
              firstName: "Ellie",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 3,
            value: 6,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps",
            targetReps: 10,
          ),
          user: UserModel(
              username: "beybladessss",
              firstName: "Jack",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 4,
            badReps: 5,
            value: 7,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps",
            targetReps: 10,
          ),
          user: UserModel(
              username: "killa_strotha",
              firstName: "Ann",
              lastName: "Strother"),
          score: ExerciseScoreModel(
            goodReps: 10,
            badReps: 3,
            value: 13,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
          )),
    ],
  );
  LeaderboardModel frontElevatedMountainClimbersLeaderboard = LeaderboardModel(
    userEntry: LeaderboardEntryModel(
        user: UserModel(
            firstName: "Brooks", lastName: "Goldstein", username: "so_cute"),
        exerciseSetDefinition: ExerciseSetModel(
          exerciseName: "180 Squat Jumps",
          targetReps: 10,
        ),
        score: ExerciseScoreModel(
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
            goodReps: 0,
            badReps: 0,
            value: 0)),
    userPosition: 0,
    nextScoreToBeat: 1,
    leaderboardEntries: [
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps",
            targetReps: 10,
          ),
          user: UserModel(
              username: "jason?", firstName: "Jason", lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 0,
            badReps: 1,
            value: 1,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps",
            targetReps: 10,
          ),
          user: UserModel(
              username: "Leeeeeee", firstName: "Lee", lastName: "Goldstein"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 0,
            value: 3,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps",
            targetReps: 10,
          ),
          user: UserModel(
              username: "no_knuckles",
              firstName: "Ellie",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 3,
            value: 6,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps",
            targetReps: 10,
          ),
          user: UserModel(
              username: "beybladessss",
              firstName: "Jack",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 4,
            badReps: 5,
            value: 7,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps",
            targetReps: 10,
          ),
          user: UserModel(
              username: "killa_strotha",
              firstName: "Ann",
              lastName: "Strother"),
          score: ExerciseScoreModel(
            goodReps: 10,
            badReps: 3,
            value: 13,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
          )),
    ],
  );

  LeaderboardModel plioPushupBurnoutsLeaderboard = LeaderboardModel(
    userEntry: LeaderboardEntryModel(
        user: UserModel(
            firstName: "Brooks", lastName: "Goldstein", username: "so_cute"),
        exerciseSetDefinition: ExerciseSetModel(
          exerciseName: "180 Squat Jumps",
          targetReps: 10,
        ),
        score: ExerciseScoreModel(
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
            goodReps: 0,
            badReps: 0,
            value: 0)),
    userPosition: 0,
    nextScoreToBeat: 1,
    leaderboardEntries: [
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps",
            targetReps: 10,
          ),
          user: UserModel(
              username: "jason?", firstName: "Jason", lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 0,
            badReps: 1,
            value: 1,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps",
            targetReps: 10,
          ),
          user: UserModel(
              username: "Leeeeeee", firstName: "Lee", lastName: "Goldstein"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 0,
            value: 3,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps",
            targetReps: 10,
          ),
          user: UserModel(
              username: "no_knuckles",
              firstName: "Ellie",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 3,
            value: 6,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps",
            targetReps: 10,
          ),
          user: UserModel(
              username: "beybladessss",
              firstName: "Jack",
              lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 4,
            badReps: 5,
            value: 7,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "180 Squat Jumps",
            targetReps: 10,
          ),
          user: UserModel(
              username: "killa_strotha",
              firstName: "Ann",
              lastName: "Strother"),
          score: ExerciseScoreModel(
            goodReps: 10,
            badReps: 3,
            value: 13,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "180 Squat Jumps",
              targetReps: 10,
            ),
          )),
    ],
  );
  LeaderboardModel spiderPushupsLeaderboard = LeaderboardModel(
    userEntry: LeaderboardEntryModel(
        user: UserModel(
            firstName: "Brooks", lastName: "Goldstein", username: "so_cute"),
        exerciseSetDefinition: ExerciseSetModel(
          exerciseName: "Barbell Back Squat",
          targetReps: 10,
        ),
        score: ExerciseScoreModel(
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Barbell Back Squat",
              targetReps: 10,
            ),
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
          ),
          user: UserModel(
              username: "jason?", firstName: "Jason", lastName: "Abromaitis"),
          score: ExerciseScoreModel(
            goodReps: 0,
            badReps: 1,
            value: 1,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Barbell Back Squat",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "Barbell Back Squat",
            targetReps: 10,
          ),
          user: UserModel(
              username: "Leeeeeee", firstName: "Lee", lastName: "Goldstein"),
          score: ExerciseScoreModel(
            goodReps: 3,
            badReps: 0,
            value: 3,
            exerciseSetDefinition: ExerciseSetModel(
              exerciseName: "Barbell Back Squat",
              targetReps: 10,
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "Barbell Back Squat",
            targetReps: 10,
          ),
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
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "Barbell Back Squat",
            targetReps: 10,
          ),
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
            ),
          )),
      LeaderboardEntryModel(
          exerciseSetDefinition: ExerciseSetModel(
            exerciseName: "Barbell Back Squat",
            targetReps: 10,
          ),
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
            ),
          )),
    ],
  );

  List<LeaderboardModel> getleaderboards() {
    return [
      bandedYRotationLeaderboard,
      bandedTricepKickbacksLeaderboard,
      frontElevatedMountainClimbersLeaderboard,
      plioPushupBurnoutsLeaderboard,
      spiderPushupsLeaderboard,
      bandedYRotationLeaderboard,
      bandedTricepKickbacksLeaderboard,
      frontElevatedMountainClimbersLeaderboard,
      plioPushupBurnoutsLeaderboard,
      spiderPushupsLeaderboard,
      bandedYRotationLeaderboard,
      bandedTricepKickbacksLeaderboard,
      frontElevatedMountainClimbersLeaderboard,
      plioPushupBurnoutsLeaderboard,
      spiderPushupsLeaderboard,
      bandedYRotationLeaderboard,
      bandedTricepKickbacksLeaderboard,
      frontElevatedMountainClimbersLeaderboard,
      plioPushupBurnoutsLeaderboard,
      spiderPushupsLeaderboard
    ];
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
                exerciseName: 'Split Squat',
                targetReps: 10,
              ),
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
                  exerciseName: 'Split Squat',
                  targetReps: 10,
                ),
                value: 7,
                goodReps: 2,
                badReps: 5)),
        LeaderboardEntryModel(
            user: UserModel(
                firstName: 'Doug', lastName: 'Goldstein', username: 'dougie'),
            score: ExerciseScoreModel(
              exerciseSetDefinition: ExerciseSetModel(
                exerciseName: 'Split Squat',
                targetReps: 10,
              ),
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
                  exerciseName: 'Split Squat',
                  targetReps: 10,
                ),
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
                  exerciseName: 'Split Squat',
                  targetReps: 10,
                ),
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
                  exerciseName: 'Split Squat',
                  targetReps: 10,
                ),
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
                exerciseName: 'Split Squat',
                targetReps: 10,
              ),
              value: 1000,
              goodReps: 5,
              badReps: 15,
            )),
      ]);
}
