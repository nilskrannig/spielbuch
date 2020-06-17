import 'package:flutter/material.dart';
import 'package:nilskrannig/screens/home_screen.dart';

import 'package:nilskrannig/story_logic.dart';
import 'package:nilskrannig/constants.dart';
import 'package:nilskrannig/components/choice_button.dart';

StoryLogic _storyLogic;

class StoryScreen extends StatefulWidget {
  static final id = 'StoryPage';

  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  void initState() {
    super.initState();

    _storyLogic = StoryLogic();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('images/background.png'),
            ),
          ),
          padding: EdgeInsets.all(16.0),
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 12,
                  child: Center(
                    child: Text(
                      _storyLogic.getStory(),
                      style: TextStyle(
                        fontSize: kMainTextSize,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ChoiceButton(
                    onPressed: () {
                      setState(() {
                        var storyContinues = _storyLogic.nextStory(1);
                        if (!storyContinues) {
                          Navigator.pop(context);
                        }
                      });
                    },
                    color: kAcceptColor,
                    choice: _storyLogic.getChoice1(),
                  ),
                ),
                SizedBox(
                  height: kButtonDistance,
                ),
                Expanded(
                  flex: 2,
                  child: Visibility(
                    visible: _storyLogic.buttonShouldBeVisible(),
                    child: ChoiceButton(
                      onPressed: () {
                        setState(() {
                          _storyLogic.nextStory(2);
                        });
                      },
                      color: kDeclineColor,
                      choice: _storyLogic.getChoice2(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
