import 'package:geolocator/geolocator.dart';

class PetrolPump {
  String? id;
  String? name;
  String? phone;
  Position? position;

  PetrolPump({this.name, this.phone, this.position});

  PetrolPump.fromJson(Map<String, dynamic> json, String id) {
    id = id;
    name = json['name'];
    phone = json['phone'];
    position = Position.fromMap(json['position']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['phone'] = phone;
    data['position'] = position?.toJson();
    return data;
  }
}
