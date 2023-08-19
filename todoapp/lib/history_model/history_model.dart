import 'package:hive/hive.dart';

part 'history_model.g.dart';

@HiveType(typeId: 10)
class HistoryModel extends HiveObject {
  @HiveField(11)
  String tit;

  @HiveField(12)
  String desc;

  HistoryModel({required this.tit, required this.desc});
}
