import 'package:flutter/material.dart';

class Themescren extends StatelessWidget {
  const Themescren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Theme',
          style: TextStyle(fontSize: 60, fontFamily: 'font1'),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'How to Change Theme :-',
                  style: TextStyle(fontSize: 25, color: Colors.green),
                ),
                SizedBox(height: 20),
                Text(
                  '1. Open the app and go to the home page.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '2. Click on the three lines located at the far right side of the app bar on the homepage.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '3. A drawer will open, containing multiple text lines.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '4. Where you will find the "Theme" option and a switch button,',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '5. toggle it on or off to change the theme of your app.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Note: This theme change only for current time.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          )),
    );
  }
}
