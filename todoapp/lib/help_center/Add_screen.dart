import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Add Todo',
        style: TextStyle(fontSize: 60, fontFamily: 'font1'),
      )),
      body: Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'How to add new Todo :-',
                  style: TextStyle(fontSize: 25, color: Colors.green),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '1. Open the app and go to the home page.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '2. Below the homepage, you will see a rounded button with the add icon Press it.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '3. A new page will open.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '4. At the topmost part of this page, you will see a text field where you need to enter the title.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '5. Below that text field, please write your description.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '6. Then, click on the rounded button labeled Add.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '7. Your todo will be successfully added.',
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
