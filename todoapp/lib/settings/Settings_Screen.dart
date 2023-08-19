import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/imagepicker_bottomsheets_and_dialog/Imagepicker_bottomsheet.dart';
import 'package:todoapp/settings/Help_Screen.dart';
import 'package:url_launcher/link.dart';
import 'package:wiredash/wiredash.dart';

import '../main.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 20),
            child: Text(
              'General',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 23, left: 30),
            child: InkWell(
              onTap: () {
                Get.back();
  },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Remove Ads', style: t20()),
                  Text('One payment to remove ads forever')
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 23, left: 30),
            child: Row(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Quick task bar', style: t20()),
                  Obx(() {
                    if (singUpController.quick == true) {
                      return Text('Enabled');
                    } else {
                      return Text('Disabled');
                    }
                  })
                ]),
                Spacer(),
                Obx(
                  () => Checkbox(
                      activeColor: Colors.teal,
                      value: singUpController.quick.value,
                      onChanged: (value) {
                        singUpController.quick.value = value!;

                        if (value == true) {
                          b2?.put('quicktask', true);
                        } else {
                          b2?.put('quicktask', false);
                        }
                      }),
                ),
                SizedBox(
                  width: 7,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 23, left: 30),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Confirm Updating task', style: t20()),
                    Obx(() {
                      if (singUpController.confirmUpdatingTask == true) {
                        return Text('Enabled');
                      } else {
                        return Text('Disabled');
                      }
                    })
                  ],
                ),
                Spacer(),
                Obx(
                  () => Checkbox(
                      activeColor: Colors.teal,
                      value: singUpController.confirmUpdatingTask.value,
                      onChanged: (value) {
                        singUpController.confirmUpdatingTask.value = value!;
                      }),
                ),
                SizedBox(
                  width: 7,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 23, left: 30),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Print list at reverse', style: t20()),
                    Obx(() {
                      if (singUpController.printreverselist == true) {
                        return Text('Enabled');
                      } else {
                        return Text('Disabled');
                      }
                    })
                  ],
                ),
                Spacer(),
                Obx(
                  () => Checkbox(
                      activeColor: Colors.teal,
                      value: singUpController.printreverselist.value,
                      onChanged: (value) {
                        singUpController.printreverselist.value = value!;
                      }),
                ),
                SizedBox(
                  width: 7,
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 23, left: 30),
              child: InkWell(
                  onTap: () {
                    Get.to(HelpScreen());
                  },
                  child: Container(
                      height: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Help',
                            style: t20(),
                          ),
                          Text(
                            'Help center',
                          ),
                        ],
                      )))),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 23),
            child: Text('About', style: t20()),
          ),
          Padding(
              padding: EdgeInsets.only(top: 23, left: 30),
              child: InkWell(
                  onTap: () {
                    Wiredash.of(context).show();
                  },
                  child: Container(
                    height: 50,
                    child: Text('Send feedback', style: t20()),
                  ))),
          Padding(
              padding: EdgeInsets.only(top: 3, left: 30),
              child: Container(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Todo', style: t20()), Text('Version 1.0')],
                  ))),
          Padding(
            padding: EdgeInsets.only(top: 3, left: 15),
            child: AboutListTile(
              // icon: Icon(Icons.info,size: 35,),
              applicationIcon: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.5),
                    color: Colors.blueGrey),
                child: Icon(
                  Icons.done,
                  size: 25,
                  weight: 1,
                ),
              ),

              applicationName: 'Todo',
              applicationVersion: 'version 1.0',
              applicationLegalese: 'relese on 8/8/2023',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Text('Follow us', style: t20()),
          ),
          Padding(
              padding: EdgeInsets.only(top: 10, left: 30),
              child: Row(
                children: [
                  Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                          'https://www.linkedin.com/in/dipak-rajput-6b9207275/'),
                      builder: (context, followLink) => TextButton(
                          onPressed: followLink,
                          child: Text(
                            'LinkedIn',
                            style: t20(),
                          ))),
                ],
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, left: 30),
              child: Row(
                children: [
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(
                        'https://instagram.com/dipak.ku7?igshid=NGExMmI2YTkyZg=='),
                    builder: (context, followLink) => TextButton(
                        onPressed: followLink,
                        child: Text('Instagram', style: t20())),
                  )
                ],
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, left: 30),
              child: Row(
                children: [
                  Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                          'https://www.facebook.com/chaturcon.chaturcon?mibextid=ZbWKwL'),
                      builder: (context, followLink) => TextButton(
                          onPressed: followLink,
                          child: Text(
                            'Facebook',
                            style: t20(),
                          ))),
                ],
              )),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}

TextStyle t20() {
  return TextStyle(
    fontSize: 20,
  );
}
