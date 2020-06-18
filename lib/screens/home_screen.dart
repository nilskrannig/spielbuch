import 'package:flutter/material.dart';
import 'package:nilskrannig/components/choice_button.dart';

import 'package:nilskrannig/screens/story_screen.dart';
import 'package:nilskrannig/constants.dart';

class HomeScreen extends StatelessWidget {
  static final id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/background.png'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Eine unerhörte Begegnung',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 42.0,
              decoration: TextDecoration.none,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          ChoiceButton(
            choice: 'Start',
            color: kAcceptColor,
            onPressed: () {
              Navigator.pushNamed(context, StoryScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
