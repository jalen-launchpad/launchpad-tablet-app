import 'dart:convert';

import 'package:redux/redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tabletapp/constants/colors.dart';
import 'package:tabletapp/constants/size_config.dart';
import 'package:tabletapp/routes/bluetooth_setup_screen/bluetooth_setup_screen_arguments.dart';
import 'package:tabletapp/routes/home_page_screen/home_page_screen.dart';
import 'package:tabletapp/routes/workout_video_screen/workout_video_screen_arguments.dart';
import 'models/workout_metadata.dart';
import 'routes/bluetooth_setup_screen/bluetooth_setup_screen.dart';
import 'routes/home_page_screen/home_page_screen_state.dart';
import 'package:http/http.dart' as http;
import 'routes/workout_video_screen/post_workout_survey/post_workout_survey.dart';
import 'routes/workout_video_screen/post_workout_survey/post_workout_survey_response_box_model.dart';
import 'routes/workout_video_screen/workout_video_screen.dart';
import 'routes/workout_video_screen/workout_video_screen_reducers.dart';
import 'routes/workout_video_screen/workout_video_screen_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == HomePageScreen.routeName) {
          final HomePageScreenState state = settings.arguments;
          return MaterialPageRoute(builder: (context) {
            return HomePageScreen(state);
          });
        } else if (settings.name == BluetoothSetupScreen.routeName) {
          final BluetoothSetupScreenArguments arguments = settings.arguments;
          return MaterialPageRoute(builder: (context) {
            return BluetoothSetupScreen(arguments);
          });
        } else if (settings.name == WorkoutVideoScreen.routeName) {
          final WorkoutVideoScreenArguments arguments = settings.arguments;
          return MaterialPageRoute(builder: (context) {
            return WorkoutVideoScreen(arguments);
          });
        }
        assert(false, "Need to implement ${settings.name}!");
        return null;
      },
      title: 'Launchpad Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        fontFamily: 'SF Pro Display',
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<WorkoutMetadata> workouts;
  // Has data been loaded from DB yet?
  bool initialDataLoadDone = false;

  // Retrieve workouts to surface on homepage from DB.
  retrieveWorkouts() async {
    // print('\n\n\n\nTESTTESTTEST\n\n\n\n');
    var url = 'https://launchpad-demo.herokuapp.com/getAllWorkouts';
    var response = await http.get(url);
    // Parse result into a List of JSON in Map<string, dynamic> form.
    print(response.body);
    List<dynamic> allWorkoutsAsString = jsonDecode(response.body);
    List<WorkoutMetadata> list = [];
    allWorkoutsAsString.forEach((json) {
      // Convert Map<string, dynamic> to WorkoutDetails class
      WorkoutMetadata workoutDetails = WorkoutMetadata.fromJson(json);
      list.add(workoutDetails);
    });
    // Save workouts to class variable.
    workouts = list;
    setState(() {
      // Let Flutter know DB is done loading to show homepage.
      initialDataLoadDone = true;
    });
    // print("AlternativeWorkouts.length" + workouts.length.toString());
  }

  @override
  didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(AssetImage('assets/images/logo.png'), context);
  }

  _MyHomePageState() {
    retrieveWorkouts();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SizeConfig().init(context);
    /*
    return Scaffold(
        body: StoreProvider<WorkoutVideoScreenState>(
            child: PostWorkoutSurvey(WorkoutVideoScreenState()),
            store: Store<WorkoutVideoScreenState>(
              rootReducer,
              initialState: WorkoutVideoScreenState(
                  postWorkoutSurveyResponseBoxModel:
                      PostWorkoutSurveyResponseBoxModel.initialize()),
            )));
            */

    return (!initialDataLoadDone
        // Splash Screen while fetching data from database
        ? Container(
            color: ColorConstants.launchpadPrimaryWhite,
            child: Center(
              child: Image.asset('assets/images/logo.png'),
            ))
        : HomePageScreen(
            HomePageScreenState(
              recommendedClass: workouts[0],
              sidebarClass: workouts[0],
              alternativeClasses: workouts,
            ),
          ));
  }
}
