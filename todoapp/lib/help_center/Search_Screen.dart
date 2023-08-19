import 'package:flutter/material.dart';

class Search_Screen extends StatelessWidget {
  const Search_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search Todo',
          style: TextStyle(fontSize: 60, fontFamily: 'font1'),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.only(top: 50, left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'How to Search Todo :-',
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
                  '2. Click on the search icon at the app bar on the homepage.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '3. New page will open.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '4. At the top of this page, you will see a text field. Please write the name of your items in that text field.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '5. Yes, by using this method, you can easily find your items.',
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
