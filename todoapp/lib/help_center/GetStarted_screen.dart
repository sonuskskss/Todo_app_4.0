import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Download  App',
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
                  'How to download This App :-',
                  style: TextStyle(fontSize: 25, color: Colors.green),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '1. Go to the google play store.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '2. Search todo app.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '3.Click on install.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Note:This app is new on the Play Store, so it may not appear at the top when you search for it. In that case, you can download the app by clicking on the link provided below.',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '\nOpen Todo and continue to use. You can easily add new items, update, delete and use all the funcanality.',
                  style: TextStyle(fontSize: 20),
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
