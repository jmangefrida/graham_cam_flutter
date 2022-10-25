import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:graham_cam_flutter/screens/home/home_screen.dart';
import 'package:graham_cam_flutter/screens/take_picture_screen.dart';

Future<void> main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();
    final cameras = await availableCameras();
    final firstCamera = cameras.first;


  // Obtain a list of the available cameras on the device.


  // Get a specific camera from the list of available cameras.

  runApp( App(camera: firstCamera));
}

class App extends StatelessWidget {
  final camera;
  const App({this.camera});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>HomeScreen(camera: camera,),
        '/takePicture':(context)=>TakePictureScreen(camera: camera)
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.black,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        accentColor: Colors.white,
        accentIconTheme: IconThemeData(color: Colors.white),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                primary: Colors.blueAccent,
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                )
            )
        ),
        brightness: Brightness.dark,
      ),


    );
  }
}





