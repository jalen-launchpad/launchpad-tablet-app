import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabletapp/constants/colors.dart';
import 'package:tabletapp/constants/size_config.dart';
import 'package:tabletapp/models/exercise_model.dart';
import 'package:tabletapp/models/workout_details.dart';
import 'package:tabletapp/placeholder_values.dart';
import 'package:tabletapp/routes/home_page_screen/home_page_screen_state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tabletapp/routes/home_page_screen/selected_class_sidebar/components/workout_details_scrollview.dart';
import 'package:tabletapp/routes/home_page_screen/selected_class_sidebar/constants.dart';
import 'package:tabletapp/routes/workout_video_screen/workout_video_screen.dart';
import 'package:tabletapp/routes/workout_video_screen/workout_video_screen_state.dart';
import 'components/exercise_bucket.dart';
import 'components/intensity_graph.dart';
import 'components/time_bucket.dart';

class SelectedClassSidebar extends StatefulWidget {
  @override
  _SelectedClassSidebarState createState() => _SelectedClassSidebarState();
}

class _SelectedClassSidebarState extends State<SelectedClassSidebar> {
  static double horizontalOutsidePadding =
      SizeConfig.blockSizeHorizontal * 2.75;

  List<ExerciseModel> removeDuplicateExercises(List<ExerciseModel> exercises) {
    Map<String, ExerciseModel> map = {};
    for (var exercise in exercises) {
      map[exercise.name] = exercise;
    }
    List<ExerciseModel> filteredList = map.values.toList();

    // print(filteredList);
    return filteredList;
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<HomePageScreenState, WorkoutDetails>(
      builder: (context, details) {
        var distinctExerciseList =
            removeDuplicateExercises(details.exerciseList);
        return Container(
          color: ColorConstants.launchpadPrimaryBlue,
          padding: EdgeInsets.only(
            left: horizontalOutsidePadding,
          ),
          child: Column(
            children: [
              // ************
              // Calendar, Today's Workout Text and Settings Logo
              // ************
              Container(
                padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 4,
                ),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('assets/images/calendarVector.png',
                          height: SizeConfig.blockSizeVertical * 3.5),
                    ),
                    Container(
                      child: Text(
                        "Today's Workout",
                        style: TextStyle(
                            color: ColorConstants.launchpadMenuSecondaryBlue,
                            fontSize: SizeConfig.blockSizeHorizontal,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.bold),
                      ),
                      padding: EdgeInsets.only(
                        left: 1.5 * SizeConfig.blockSizeHorizontal,
                      ),
                    ),
                  ],
                ),
              ),
              // ************
              // Workout Title
              // ************
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(
                        left: 0,
                      ),
                      width: SizeConfig.blockSizeHorizontal * 33 -
                          2 * horizontalOutsidePadding,
                      height: SizeConfig.blockSizeVertical * 9,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(details.title,
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: SizeConfig.blockSizeHorizontal * 3,
                              color: ColorConstants.launchpadPrimaryWhite,
                            )),
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 2.25,
                ),
              ),
              // ************
              // Workout Details label
              // ************
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Workout Details",
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: SelectedClassSidebarConstants.subTextSize,
                        color: ColorConstants.launchpadPrimaryWhite,
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 2.25,
                ),
              ),

              WorkoutDetailsScrollView(distinctExerciseList),

              Container(
                padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 3.5,
                ),
                child: Row(
                  children: [
                    // Time Bucket
                    TimeBucket(details),
                    // Exercise Bucket
                    ExerciseBucket(distinctExerciseList)
                  ],
                ),
              ),

              IntensityGraph(details.exerciseIntensities),

              Container(
                height: SizeConfig.blockSizeVertical * 10,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(right: horizontalOutsidePadding),
                child: RaisedButton.icon(
                  color: ColorConstants.launchpadPlayButtonBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(110),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                WorkoutVideoScreen(
                                    PlaceholderValues().getWorkoutState())));
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: ColorConstants.launchpadPrimaryWhite,
                    size: SizeConfig.blockSizeHorizontal * 5,
                  ),
                  label: Text(
                    "Start Workout",
                    style: TextStyle(
                      color: ColorConstants.launchpadPrimaryWhite,
                      fontSize: SizeConfig.blockSizeHorizontal * 2,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      converter: (store) => store.state.sidebarClass,
    );
  }
}
