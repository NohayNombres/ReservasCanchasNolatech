import 'package:hive/hive.dart';

part 'reserve.g.dart';

@HiveType(typeId: 1)
class Reserve extends HiveObject {
  @HiveField(0)
  late String userName;
  @HiveField(1)
  late String userDocument;
  @HiveField(2)
  late String courtName;
  @HiveField(3)
  late DateTime startTime;
  @HiveField(4) 
  late DateTime endTime;
}
