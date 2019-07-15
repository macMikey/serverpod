/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: non_constant_identifier_names

import 'package:serverpod_client/serverpod_client.dart';
// ignore: unused_import
import 'protocol.dart';

class FutureCallEntry extends SerializableEntity {
  String get className => 'FutureCallEntry';

  int id;
  int serverId;
  DateTime time;
  String serializedObject;
  String name;

  FutureCallEntry({
    this.id,
    this.serverId,
    this.time,
    this.serializedObject,
    this.name,
});

  FutureCallEntry.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    serverId = _data['serverId'];
    time = _data['time'] != null ? DateTime.tryParse(_data['time']) : null;
    serializedObject = _data['serializedObject'];
    name = _data['name'];
  }

  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'serverId': serverId,
      'time': time?.toUtc()?.toIso8601String(),
      'serializedObject': serializedObject,
      'name': name,
    });
  }
}
