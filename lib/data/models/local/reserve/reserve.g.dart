// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserve.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReserveAdapter extends TypeAdapter<Reserve> {
  @override
  final int typeId = 1;

  @override
  Reserve read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Reserve()
      ..userName = fields[0] as String
      ..userDocument = fields[1] as String
      ..courtName = fields[2] as String
      ..startTime = fields[3] as DateTime
      ..endTime = fields[4] as DateTime;
  }

  @override
  void write(BinaryWriter writer, Reserve obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.userName)
      ..writeByte(1)
      ..write(obj.userDocument)
      ..writeByte(2)
      ..write(obj.courtName)
      ..writeByte(3)
      ..write(obj.startTime)
      ..writeByte(4)
      ..write(obj.endTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReserveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
