import 'package:hive/hive.dart';

import 'history_model.dart';

class HistoryBoxes {
  static Box<HistoryModel> getHistory() => Hive.box<HistoryModel>('history');
}
