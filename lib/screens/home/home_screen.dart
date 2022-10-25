import 'package:flutter/material.dart';

import '../take_picture_screen.dart';

class HomeScreen extends StatefulWidget {
  final camera;
  const HomeScreen({required this.camera});

  @override
  State<HomeScreen> createState() => _HomeScreenState(camera: camera);
}

class _HomeScreenState extends State<HomeScreen> {
  final camera;
  _HomeScreenState({required this.camera});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GrahamCam'),
      ),
      body: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Test'),
              TextButton(onPressed: (){
                print('camera button pushed');
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> TakePictureScreen(camera: camera,),
                fullscreenDialog: true));
              }, child: Text('Camera'))
              //layoutType == 'grid'
              //    ? GridViewItems(categories: categoryCollection.selectedCategories)
              //    : ListViewItems(categoryCollection: categoryCollection)),

            ],
          )),
    );
  }
}
