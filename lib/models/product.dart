class ProductModel {
  String? type;
  String? id;
  String? subType;
  String? otherType;
  String? model;
  String? year;
  String? milage;
  int? price;
  bool? swipeOrSell;
  bool? onlySell;
  String? phoneNo;
  String? title;
  String? description;
  String? url;
  String? rating;
  List? saved;
  DateTime? createOn;
  DateTime? dactiveOn;
  DateTime? deletedOn;
  Packege? packege;
  SallerModel? saller;

  ProductModel(
      {this.id,
      this.type,
      this.subType,
      this.otherType,
      this.model,
      this.year,
      this.milage,
      this.price,
      this.swipeOrSell,
      this.onlySell,
      this.phoneNo,
      this.title,
      this.description,
      this.url,
      this.rating,
      this.saved,
      this.createOn,
      this.dactiveOn,
      this.deletedOn,
      this.packege,
      this.saller});

  ProductModel.fromJson(Map<String, dynamic> json, String postId) {
    id = postId;
    type = json['type'];
    subType = json['subType'];
    otherType = json['otherType'];
    model = json['model'];
    year = json['year'];
    milage = json['milage'];
    price = json['price'];
    swipeOrSell = json['swipeOrSell'];
    onlySell = json['onlySell'];
    phoneNo = json['phoneNo'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    rating = json['rating'];
    saved = json['saved'] ?? [];
    createOn =
        json['createOn'] != null ? DateTime.parse(json['createOn']) : null;
    dactiveOn =
        json['dactiveOn'] != null ? DateTime.parse(json['dactiveOn']) : null;
    deletedOn =
        json['deletedOn'] != null ? DateTime.parse(json['deletedOn']) : null;
    packege =
        json['packege'] != null ? Packege.fromJson(json['packege']) : null;
    saller =
        json['saller'] != null ? SallerModel.fromJson(json['saller']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['subType'] = subType;
    data['otherType'] = otherType;
    data['model'] = model;
    data['year'] = year;
    data['milage'] = milage;
    data['price'] = price;
    data['swipeOrSell'] = swipeOrSell;
    data['onlySell'] = onlySell;
    data['phoneNo'] = phoneNo;
    data['title'] = title;
    data['description'] = description;
    data['url'] = url;
    data['rating'] = rating;
    data['saved'] = saved;
    data['createOn'] = createOn?.toIso8601String();
    data['dactiveOn'] = dactiveOn?.toIso8601String();
    data['deletedOn'] = deletedOn?.toIso8601String();
    if (packege != null) {
      data['packege'] = packege!.toJson();
    }
    if (saller != null) {
      data['saller'] = saller!.toJson();
    }
    return data;
  }
}

class Packege {
  String? name;
  String? price;
  String? limte;
  String? featureProduct;

  Packege({this.name, this.price, this.limte, this.featureProduct});

  Packege.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
    limte = json['limte'];
    featureProduct = json['featureProduct'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['price'] = price;
    data['limte'] = limte;
    data['featureProduct'] = featureProduct;
    return data;
  }
}

class SallerModel {
  String? uId;
  String? name;
  String? profile;

  SallerModel({this.uId, this.name, this.profile});

  SallerModel.fromJson(Map<String, dynamic> json) {
    uId = json['uId'];
    name = json['name'];
    profile = json['profile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uId'] = uId;
    data['name'] = name;
    data['profile'] = profile;
    return data;
  }
}
