import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../models/boxes.dart';
import '../models/notes_model.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  final searchFilterController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: TextStyle(fontSize: 60, fontFamily: 'font1'),
        ),
        backgroundColor: Colors.black12,
      ),
      body: ListView(children: [
        SizedBox(
          height: 15,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              controller: searchFilterController,
              autofocus: true,
              decoration: InputDecoration(
                  suffix: Icon(
                    Icons.search,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
              onChanged: (value) {
                setState(() {});
              },
            )),
        SizedBox(
          height: 25,
        ),
        ValueListenableBuilder<Box<NotesModel>>(
            valueListenable: Boxes.getData().listenable(),
            builder: (context, box, _) {
              var data = box.values.toList().cast<NotesModel>();

              return ListView.builder(
                  reverse: true,
                  shrinkWrap: true,
                  itemCount: box.length,
                  itemBuilder: (context, index) {
                    final rrr = data[index].title.toString() +
                        data[index].description.toString();

                    if (searchFilterController.text.isEmpty) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Card(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    top: 5, bottom: 5, left: 7, right: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data[index].title.toString(),
                                      style: TextStyle(fontSize: 21),
                                    ),
                                    Text(
                                      data[index].description.toString(),
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ))),
                      );
                    } else if (rrr
                        .toLowerCase()
                        .contains(searchFilterController.text.toLowerCase())) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Card(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    top: 5, bottom: 5, left: 7, right: 5),
                                child: Column(
                                  children: [
                                    Text(
                                      data[index].title.toString(),
                                      style: TextStyle(fontSize: 21),
                                    ),
                                    Text(
                                      data[index].description.toString(),
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ))),
                      );
                    } else {
                      return Container();
                    }
                  });
            }),
      ]),
    );
  }
}
