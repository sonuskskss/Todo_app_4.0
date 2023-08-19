import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/help_center/Add_screen.dart';
import 'package:todoapp/help_center/Delete_Screen.dart';
import 'package:todoapp/help_center/Feedback_Scren.dart';
import 'package:todoapp/help_center/FollowScren.dart';
import 'package:todoapp/help_center/GetStarted_screen.dart';
import 'package:todoapp/help_center/Search_Screen.dart';
import 'package:todoapp/help_center/Theme_scren.dart';
import 'package:todoapp/help_center/update_screen.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help Center',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.blueGrey),
                child: Icon(
                  Icons.done,
                  size: 35,
                  weight: 1,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'How can we help?',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 900,
            width: double.infinity,
            color: Colors.black12,
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Help topics',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white60,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(GetStartedScreen());
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Icon(Icons.start),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Get Started',
                              style: a(),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(AddScreen());
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Icon(Icons.add),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Add',
                              style: a(),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(UpdateScreen());
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Icon(Icons.update),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Update',
                              style: a(),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(DeleteScreen());
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Icon(Icons.delete),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Delete',
                              style: a(),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(Search_Screen());
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Search',
                              style: a(),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(Themescren());
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Icon(Icons.light_mode),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Theme',
                              style: a(),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(Feedbackscren());
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Icon(Icons.feedback),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Feedback',
                              style: a(),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(FollowScren());
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Icon(Icons.done),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Follow',
                              style: a(),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

TextStyle a() {
  return TextStyle(fontSize: 20);
}
