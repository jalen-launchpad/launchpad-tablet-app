import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tabletapp/constants/colors.dart';
import 'package:tabletapp/constants/size_config.dart';
import 'package:tabletapp/routes/workout_video_screen/constants.dart';

class ProgressBar extends StatefulWidget {
  final double duration;
  ProgressBar(this.duration);

  @override
  _ProgressBarState createState() => _ProgressBarState(this.duration);
}

class _ProgressBarState extends State<ProgressBar> {
  final double duration;
  double secondsElapsed = 0;
  double secondsToGo;
  Timer progress;

  void pause() {
    progress.cancel();
  }

  void play() {
    initiateProgressBar();
  }

  void initiateProgressBar() {
    progress = Timer.periodic(Duration(seconds: 1), (timer) {
      if (secondsElapsed < duration) {
        setState(() {
          secondsElapsed++;
          secondsToGo--;
        });
      }
    });
  }

  String _printDuration(double secondsToGo) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    var duration = Duration(seconds: secondsToGo.toInt());
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  _ProgressBarState(this.duration) {
    initiateProgressBar();
    secondsToGo = duration;
  }

  @override
  Widget build(BuildContext context) {
    Alignment progressLocation =
        Alignment(-1.0 + (2 * secondsElapsed / duration), 0.0);

    return Stack(
      children: [
        Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 2.5,
                  right: WorkoutVideoScreenConstants.leftPaddingAlign),
              child: Text("${_printDuration(secondsToGo)}",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: ColorConstants.launchpadPrimaryWhite,
                      fontSize: SizeConfig.blockSizeHorizontal * 3)),
            )),
        Container(
          margin: EdgeInsets.only(
              top: SizeConfig.blockSizeVertical * 4,
              left: WorkoutVideoScreenConstants.leftPaddingAlign),
          height: SizeConfig.blockSizeVertical * 3.5,
          width: SizeConfig.blockSizeHorizontal * 83,
          child: Center(
            child: Stack(
              children: [
                // Grey progress bar
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: SizeConfig.blockSizeVertical,
                    width: SizeConfig.blockSizeHorizontal * 83,
                    color: ColorConstants.workoutVideoProgressBarGrey,
                  ),
                ),
                // Blue progress bar
                Align(
                  alignment: Alignment(-0.98, 0.0),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 0.25),
                    height: SizeConfig.blockSizeVertical,
                    width: (SizeConfig.blockSizeHorizontal *
                        83 *
                        (secondsElapsed / duration)),
                    color: ColorConstants.workoutVideoProgressBarBlue,
                  ),
                ),
                // Blue Knob at beginning
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            SizeConfig.blockSizeHorizontal),
                        color: ColorConstants.workoutVideoProgressBarBlue),
                    height: SizeConfig.blockSizeHorizontal * 1.5,
                    width: SizeConfig.blockSizeHorizontal * 1.5,
                  ),
                ),
                // Grey Knob at End
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            SizeConfig.blockSizeHorizontal),
                        color: ColorConstants.workoutVideoProgressBarGrey),
                    height: SizeConfig.blockSizeHorizontal * 1.5,
                    width: SizeConfig.blockSizeHorizontal * 1.5,
                  ),
                ),
                // Blue moving circle to indicate current progress
                Align(
                  alignment: progressLocation,
                  child: Container(
                    height: SizeConfig.blockSizeVertical * 3,
                    width: SizeConfig.blockSizeVertical * 3,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: ColorConstants.workoutVideoProgressBarBlue,
                            borderRadius: BorderRadius.circular(
                              SizeConfig.blockSizeVertical * 3,
                            ),
                          ),
                          height: SizeConfig.blockSizeVertical * 3,
                          width: SizeConfig.blockSizeVertical * 3,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: SizeConfig.blockSizeVertical * 1.5,
                              width: SizeConfig.blockSizeVertical * 1.5,
                              decoration: BoxDecoration(
                                  color: ColorConstants.launchpadPrimaryWhite,
                                  borderRadius: BorderRadius.circular(
                                      SizeConfig.blockSizeVertical * 1.5))),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
