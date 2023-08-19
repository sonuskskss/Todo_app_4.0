import 'package:todoapp/drawer/History_screen.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:todoapp/imagepicker_bottomsheets_and_dialog/Imagepicker_bottomsheet.dart';
import 'package:todoapp/settings/Settings_Screen.dart';
import 'package:wiredash/wiredash.dart';

import 'Drawer_Follow_Screen.dart';

class Drawer1 extends StatefulWidget {
  const Drawer1({super.key});

  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.clear,
                    size: 35,
                  )),
              SizedBox(
                width: 15,
              )
            ],
          ),
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Row(
              children: [
                Icon(
                  Icons.home,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Lists',
                  style: t25(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Row(
              children: [
                Icon(
                  Icons.newspaper,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Remove Ads',
                  style: t25(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Get.back();
              Get.to(HistoryScreen());
            },
            child: Row(
              children: [
                Icon(
                  Icons.manage_history_sharp,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'History',
                  style: t25(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              FaIcon(
                Icons.light_mode,
                size: 35,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Theme',
                style: t25(),
              ),
              SizedBox(
                width: 100,
              ),
              Obx(() {
                return Switch(
                    value: singUpController.themeval.value,
                    onChanged: (value) {
                      singUpController.themeval.value = value!;
                      value == true
                          ? Get.changeTheme(ThemeData.dark())
                          : Get.changeTheme(ThemeData.light());

                    });
              })
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Get.back();
              Wiredash.of(context).show();
            },
            child: Row(
              children: [
                Icon(
                  Icons.feedback,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Send feedback',
                  style: t25(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Get.back();
              FollowDialog();
            },
            child: Row(
              children: [
                Icon(
                  Icons.done,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Follow us',
                  style: t25(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Get.back();
              Get.to(SettingsScreen());
            },
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Settings',
                  style: t25(),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

TextStyle t25() {
  return TextStyle(
    fontSize: 25,
  );
}
