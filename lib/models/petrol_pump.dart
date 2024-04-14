import 'package:geolocator/geolocator.dart';

class PetrolPump {
  String? id;
  String? name;
  String? phone;
  String? profile;
  Position? position;

  PetrolPump({this.name, this.phone, this.profile, this.position});

  PetrolPump.fromJson(Map<String, dynamic> json, String docId) {
    id = docId;
    name = json['name'];
    phone = json['phone'];
    profile = json['profile'];
    position = Position.fromMap(json['position']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['phone'] = phone;
    data['profile'] = profile;
    data['position'] = position?.toJson();
    return data;
  }
}
