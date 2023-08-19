import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todoapp/history_model/history_model.dart';
import 'package:hive/hive.dart';
import 'package:todoapp/models/notes_model.dart';
import 'package:todoapp/splash_Screenn/splash_Screen.dart';
import 'package:wiredash/wiredash.dart';
import 'package:flutter/services.dart';

String projectId = 'notes-kbz7ppl';
String secret = '_R19ZZB2hAie9Ay80yJnXoapol40LkKo';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([

    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp
  ]);

  var directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);

  Hive.registerAdapter(NotesModelAdapter());
  Hive.registerAdapter(HistoryModelAdapter());
  await Hive.openBox<NotesModel>('notes');
  await Hive.openBox<HistoryModel>('history');
  await Hive.openBox('b2');
  await Hive.openBox('b3');
  await Hive.openBox('b4');

  runApp(const MyApp());
}

Box? b2;
Box? b3;
Box? b4;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    b2 = Hive.box('b2'); //

    b3 = Hive.box('b3');
    b4 = Hive.box('b4');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wiredash(
        projectId: projectId,
        secret: secret,
        child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Todo',
            theme: ThemeData.dark(),
            home: const SplashScreen()));
  }
}
