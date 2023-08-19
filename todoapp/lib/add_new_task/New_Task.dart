

import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../home_screen/Home_Screen.dart';

import '../models/boxes.dart';
import '../models/notes_model.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  DateTime? pickedDateTime;
  TimeOfDay? time;

  String setTime = 'Time..';
  String setDate = 'Date..';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Task',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15, left: 20, right: 20),
        child: ListView(
          children: [
            Text(
              'Title?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              autofocus: true,
              maxLength: 83,
              decoration: InputDecoration(hintText: 'Enter Title Here'),
              controller: titleEditingController,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Description?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              maxLines: null,
              decoration: InputDecoration(hintText: 'Enter Description Here'),
              controller: descriptionController,
            ),
            SizedBox(
              height: 50,
            ),

            Text(
              'Set Due date and time',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),

            Container(
              height: 30,
              child: InkWell(
                child: Text(
                  setDate,
                  style: TextStyle(fontSize: 17, color: Colors.white60),
                ),
                onTap: () async {
                  pickedDateTime = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2023),
                      lastDate: DateTime(2030));
                  setState(() {
                    setDate = pickedDateTime == null
                        ? 'Date..'
                        : '${'    ${pickedDateTime?.year.toString()}-' + '${pickedDateTime?.month.toString()}-' '${pickedDateTime?.day.toString()}'}'
                            .toString();
                  });
                },
              ),
            ),

            Container(
              height: 2,
              color: Colors.white10,
            ),

            SizedBox(
              height: 37,
            ),

            Container(
              height: 30,
              child: InkWell(
                child: Text(
                  setTime,
                  style: TextStyle(fontSize: 17, color: Colors.white60),
                ),
                onTap: () async {
                  time = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.input,
                  );

                  setState(() {
                    setTime = time == null
                        ? 'Time..'
                        : '${'${time?.hour.toString()} : ' '${time?.minute.toString()}'}';
                  });
                },
              ),
            ),

            //  SizedBox(height: 15,),
            Container(
              height: 2,
              color: Colors.white10,
            ),
            SizedBox(
              height: 50,
            ),

            Container(
              child: Opacity(
                opacity: 0.02,
                child: Image.asset(
                  'lib/images/addTask.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.done,
          size: 35,
        ),
        onPressed: () {



         // var date = DateTime.now();
          Fluttertoast.showToast(
            msg: 'Item Added Successfully',
            gravity: ToastGravity.TOP,
           backgroundColor: Colors.blueGrey,
            fontSize: 20.0,
          );



          final data = NotesModel(
              title: titleEditingController.text.toString(),
              description: descriptionController.text.toString() +
                  '\n' +
                  '${pickedDateTime == null ? '' : '${pickedDateTime?.year.toString()}-' + '${pickedDateTime?.month.toString()}-' '${pickedDateTime?.day.toString()}'}' +
                  '   ' +
                  '${time == null ? '' : '${time?.hour.toString()} : ' '${time?.minute.toString()}'}');
          final box = Boxes.getData();
          box.add(data);

          titleEditingController.clear();
          descriptionController.clear();

          Get.back();
        },
      ),
    );
  }
}
