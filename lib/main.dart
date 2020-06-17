import 'package:flutter/material.dart';

import 'package:nilskrannig/screens/home_screen.dart';
import 'package:nilskrannig/screens/story_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        StoryScreen.id: (context) => StoryScreen(),
      },
    );
  }
}
