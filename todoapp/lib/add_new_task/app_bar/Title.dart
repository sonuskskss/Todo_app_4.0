import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:todoapp/search_filter/Search_Filter.dart';


import 'Circle_Avatar.dart';

class AppbarTitle extends StatefulWidget {
  const AppbarTitle({super.key});

  @override
  State<AppbarTitle> createState() => _AppbarTitleState();
}

class _AppbarTitleState extends State<AppbarTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Circleavatar(),
        SizedBox(
          width: 15,
        ),
        Text(
          'All Lists',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        IconButton(
            onPressed: () {
              Get.to(SearchFilter());
            },
            icon: Icon(
              Icons.search,
              size: 30,
            ))
      ],
    );
  }
}
