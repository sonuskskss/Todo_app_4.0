import 'package:flutter/material.dart';

class Feedbackscren extends StatelessWidget {
  const Feedbackscren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Send Feedback',
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
                  'How to Send Feedback :-',
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
                  '4. Where you will find the "Feedback" option and click on it.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '5. A new page will open. Where you can write you feedback.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '5. You can report the bug encountered in this app here.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '6. Yes, you can also send a screenshot of the app to show where the bug occurred.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '7. Yes, you can provide feedback in this way.',
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
