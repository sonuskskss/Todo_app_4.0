import 'package:flutter/material.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Update Todo',
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
                  'How to Update Todo :-',
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
                  '2. You will see three dots in the top-right corner of each item.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '3. Click on the three dots of the item that you want to update.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '4. Then, a popup menu will appear with options "Update" and "Delete" written on it.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '5. Click on update.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '6. Then, another dialog box will open, which will contain two text fields.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '7. In those text fields, you will find your old values, and below them, there will be two  Text buttons.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '8. As per your preferences, modify the items in those text fields, and then click on the Update button.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '9. Your todo will be successfully updated.',
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
