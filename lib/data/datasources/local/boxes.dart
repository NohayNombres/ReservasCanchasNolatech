import 'package:hive/hive.dart';
import 'package:reservas_canchas_nolatech/data/models/local/reserve/reserve.dart';

class Boxes {
  static Box<Reserve> reserveBox() => Hive.box('reserve');
}
