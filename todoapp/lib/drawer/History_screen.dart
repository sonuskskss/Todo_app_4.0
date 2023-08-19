import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todoapp/history_model/HistoryBoxes.dart';
import 'package:todoapp/history_model/history_model.dart';

import '../models/boxes.dart';
import '../models/notes_model.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'History',
          style: TextStyle(
            fontSize: 60,
            fontFamily: 'font1',
          ),
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: HistoryBoxes.getHistory().listenable(),
        builder: (context, box, _) {
          var data = box.values.toList().cast<HistoryModel>();
          return ListView.builder(
              reverse: true,
              itemCount: box.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: 7,
                    right: 7,
                    top: 5,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 0, left: 7, right: 7, bottom: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                  onTap: () {
                                    final dataa = NotesModel(
                                        title: data[index].tit.toString(),
                                        description:
                                            data[index].desc.toString());
                                    final box = Boxes.getData();
                                    box.add(dataa);

                                    Get.snackbar('', '',
                                        titleText: Text(
                                          'Item Undo Successfully',
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                        messageText: Text(''),
                                        icon: Icon(
                                          Icons.done_all,
                                        ),
                                        backgroundColor: Colors.blueGrey);

                                    DeleteHistory(data[index]);
                                  },
                                  child: Text(
                                    'Undo',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.teal,
                                        fontWeight: FontWeight.bold),
                                  )),
                              InkWell(
                                onTap: () {
                                  DeleteHistory(data[index]);
                                },
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            data[index].tit.toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            data[index].desc.toString(),
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}

DeleteHistory(HistoryModel historyModel) async {
  await historyModel.delete();
}
