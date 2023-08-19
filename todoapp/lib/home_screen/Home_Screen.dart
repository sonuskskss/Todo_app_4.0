import 'dart:ui';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';




import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todoapp/add_new_task/app_bar/Title.dart';
import 'package:todoapp/history_model/history_model.dart';
import 'package:todoapp/imagepicker_bottomsheets_and_dialog/Imagepicker_bottomsheet.dart';
import 'package:todoapp/models/boxes.dart';

import 'package:todoapp/models/notes_model.dart';

import '../add_new_task/New_Task.dart';
import '../drawer/End_drawer.dart';
import '../history_model/HistoryBoxes.dart';
import '../main.dart';
import 'package:share_plus/share_plus.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  final FlutterTts flutterTts =FlutterTts();



  speak(String tex)async{
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak(tex);
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer1(),
      appBar: AppBar(
        //backgroundColor: Colors.black12,

        title: AppbarTitle(),
      ),
      body: Stack(
        children: [
          ValueListenableBuilder<Box<NotesModel>>(
              valueListenable: Boxes.getData().listenable(),
              builder: (context, box, _) {
                var data = box.values.toList().cast<NotesModel>();
                return Obx(() {
                  return ListView.builder(
                      reverse: singUpController.printreverselist.value,
                      shrinkWrap: true,
                      itemCount: box.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: EdgeInsets.only(left: 8, right: 8, top: 8),


                            child: InkWell(
                              onLongPress: () async {
                                await Share.share(data[index].title.toString() +
                                    '\n\n' +
                                    data[index].description.toString());
                              },
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 0, right: 0, bottom: 7,top: 0),
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ListTile(
                                            title: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    data[index]
                                                        .title
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold)),

                                              ],
                                            ),












                                            trailing: PopupMenuButton(
                                              icon: Icon(Icons.more_vert),
                                              itemBuilder: (context) => [
                                                PopupMenuItem(
                                                  child: InkWell(
                                                    onTap: () {
                                                      Get.back();
                                                      EditDialog(
                                                          data[index],
                                                          data[index]
                                                              .title
                                                              .toString(),
                                                          data[index]
                                                              .description
                                                              .toString());
                                                    },
                                                    child: ListTile(
                                                      leading: Icon(
                                                        Icons.edit,
                                                        size: 30,
                                                        color: Colors.teal,
                                                      ),
                                                      title: Text(
                                                        'Edit',
                                                        style: TextStyle(
                                                            fontSize: 20),
                                                      ),
                                                    ),
                                                  ),
                                                ),













                        PopupMenuItem(
                        child: ListTile(
                        leading: Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 30,
                        ),
                        title: Text(
                        'Delete',
                        style: TextStyle(
                        fontSize: 20),
                        ),
                        ),
                        onTap: () {
                        final dd = HistoryModel(
                        tit: data[index]
                            .title
                            .toString(),
                        desc: data[index]
                            .description
                            .toString());
                        final bo = HistoryBoxes
                            .getHistory();

                        bo.add(dd);
                        dd.save();
                        Get.snackbar('', '',
                        titleText: Text(
                        'Item Deleted Successfully',
                        style: TextStyle(
                        fontSize: 20,
                        ),
                        ),
                        messageText: Text(''),
                        icon: Icon(
                        Icons.done_all,
                        ),
                        backgroundColor:
                        Colors.blueGrey);

                        delete(data[index]);
                        debugPrint('Delete');
                        },
                        ),


                                                PopupMenuItem(
                                                  child: ListTile(
                                                    leading: Icon(
                                                      Icons.record_voice_over_outlined,
                                                      color: Colors.teal,
                                                      size: 30,

                                                    ),
                                                    title: Text(
                                                      'Speak',
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  onTap: (){
                                                    speak("Title is........."+data[index].title.toString()+"...And Description is.........."+ data[index].description.toString());
                                                  },
                                                ),
                                              ],
                                            ),

























                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 17,),
                                            child: Text(
                                                data[index]
                                                    .description
                                                    .toString(),
                                                style: TextStyle(fontSize: 20)),
                                          )
                                        ],
                                      ))),
                            ));
                      });
                });
              }),
          Align(

            alignment: Alignment.bottomLeft,
            child: ValueListenableBuilder(
              valueListenable: b2!.listenable(),
              builder: (context, data, _) {
                if (b2?.get('quicktask') == true) {
                  return Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(22)),
                      margin: EdgeInsets.only(left: 6, bottom: 15),
                      height: 45,
                      width: 300,
                      child:  Center(
                          child:

                        TextFormField(

                               controller: quicktaskdescriptionController,
                               decoration: InputDecoration(

                                   hintText: 'Enter quick task here',
                                   suffix: InkWell(
                                     onTap: () {
                                       final data = NotesModel(
                                           title: '',
                                           description:
                                           quicktaskdescriptionController.text
                                               .toString());
                                       final box = Boxes.getData();
                                       box.add(data);

                                       titleEditingController.clear();
                                       quicktaskdescriptionController.clear();

                                       FocusScope.of(context).unfocus();

                                       Fluttertoast.showToast(
                                         msg: 'Item Added Successfully',
                                         gravity: ToastGravity.TOP,
                                         backgroundColor: Colors.blueGrey,

                                         fontSize: 20.0,
                                       );
                                     },
                                     child: Padding(
                                       padding: EdgeInsets.only(top: 30),
                                       child: Icon(

                                         Icons.done,
                                         size: 30,
                                       ),
                                     ),
                                   ),
                                   border: OutlineInputBorder(
                                       borderSide: BorderSide(
                                        // color: Colors.red


                                       ),
                                       borderRadius: BorderRadius.circular(22))

                               ),
                             ),


                        ),
                      );
                } else {
                  return Container();
                }
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () async {
          Get.to(AddTodo());
          // await b2?.put('tt', 5);
        },
      ),
    );
  }

  //
  void delete(NotesModel notesModel) async {
    await notesModel.delete();
  }

 Future  EditDialog(
      NotesModel notesModel, String title, String description) async {
    titleEditingController.text = title;
    descriptionController.text = description;
    return  Get.defaultDialog(
        title: 'Edit Notes',
        content: Container(


          height: 170,
            child:SingleChildScrollView(
        child:

            Column(

        children:

        [

            //  SizedBox(height: 600,),
              TextFormField(
                //maxLines: null,
                maxLength: 83,
                controller: titleEditingController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),






                    TextFormField(
                        maxLines: null,
                        
                        controller: descriptionController,
                        decoration: InputDecoration(border: OutlineInputBorder()),

               ),









            ],


            )

            )

        )
        
        
        
        ,



       actions: [
         TextButton(onPressed: (){

           Get.back();
           titleEditingController.clear();
           descriptionController.clear();

           debugPrint('Cancel');
         }, child:Text('Cancel   ',style: TextStyle(fontSize: 20),)),






         TextButton(onPressed: () async{


           if (singUpController.confirmUpdatingTask == true) {
             Get.defaultDialog(
                 title: 'Confirm Update for this task',
                 content: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     InkWell(
                       child: Text(
                         'Cancel',
                         style: TextStyle(
                           fontSize: 20,
                         ),
                       ),
                       onTap: () {


                         Get.back();
                         titleEditingController.clear();
                         descriptionController.clear();
                       },
                     ),
                     InkWell(
                       child: Text(
                         'Confirm',
                         style: TextStyle(
                           fontSize: 20,
                         ),
                       ),
                       onTap: () async {
                         notesModel.title =
                             titleEditingController.text.toString();

                         notesModel.description =
                             descriptionController.text.toString();
                         await notesModel.save();
                         titleEditingController.clear();
                         descriptionController.clear();
                         Fluttertoast.showToast(
                           msg: 'Item Updated Successfully',
                           gravity: ToastGravity.TOP,
                           // Duration for iOS (ignored on Android)
                           backgroundColor: Colors.blueGrey,
                           //  textColor: Colors.white,

                           fontSize: 20.0,
                         );

                         Get.back();
                         Get.back();
                       },
                     ),
                   ],
                 ));
           } else {
             notesModel.title = titleEditingController.text.toString();

             notesModel.description =
                 descriptionController.text.toString();
             await notesModel.save();
             titleEditingController.clear();
             descriptionController.clear();
             Fluttertoast.showToast(
               msg: 'Item Updated Successfully',
               gravity: ToastGravity.TOP,
               backgroundColor: Colors.blueGrey,
               fontSize: 20.0,
             );

             Get.back();
             Get.back();
           }

           debugPrint('Update');
         }, child:Text('   Update',style: TextStyle(fontSize: 20),)),


       ]


    );
  }
}

TextEditingController titleEditingController = TextEditingController();
TextEditingController descriptionController = TextEditingController();
TextEditingController quicktasktitleController = TextEditingController();
TextEditingController quicktaskdescriptionController = TextEditingController();
















