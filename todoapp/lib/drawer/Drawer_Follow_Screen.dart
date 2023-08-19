import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/link.dart';

void FollowDialog() {
  Get.defaultDialog(
      title: 'Follow us',
      content: Column(
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  'lib/images/linkedin.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Link(
                  target: LinkTarget.blank,
                  uri: Uri.parse(
                      'https://www.linkedin.com/in/dipak-rajput-6b9207275/'),
                  builder: (context, followLink) => TextButton(
                      onPressed: followLink,
                      child: Text(
                        'LinkedIn',
                        style: TextStyle(fontSize: 20),
                      ))),
            ],
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ClipOval(
                  child: Image.asset(
                    'lib/images/instagram.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Link(
                  target: LinkTarget.blank,
                  uri: Uri.parse(
                      'https://instagram.com/dipak.ku7?igshid=NGExMmI2YTkyZg=='),
                  builder: (context, followLink) => TextButton(
                      onPressed: followLink,
                      child: Text(
                        'Instagram',
                        style: TextStyle(fontSize: 20),
                      ))),
            ],
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ClipOval(
                  child: Image.asset(
                    'lib/images/fb.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Link(
                  target: LinkTarget.blank,
                  uri: Uri.parse(
                      'https://www.facebook.com/chaturcon.chaturcon?mibextid=ZbWKwL'),
                  builder: (context, followLink) => TextButton(
                        onPressed: followLink,
                        child: Text(
                          'Facebook',
                          style: TextStyle(fontSize: 20),
                        ),
                      ))
            ],
          ),
        ],
      ));
}
