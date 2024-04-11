class AuthModel {
  bool? isPetrolPump;
  bool? isMechanic;
  String? uID;
  String? userName;
  String? email;
  String? phoneNo;
  String? gender;
  String? profile;
  String? password;
  String? cardNumber;
  List? clas;
  String? address;
  DateTime? dob;
  int? balance;
  DateTime? joinDate;

  AuthModel({
    this.isPetrolPump,
    this.isMechanic,
    this.uID,
    this.userName,
    this.email,
    this.phoneNo,
    this.gender,
    this.profile,
    this.password,
    this.cardNumber,
    this.clas,
    this.dob,
    this.address,
    this.balance,
    this.joinDate,
  });

  AuthModel.fromJson(Map<String, dynamic> json) {
    isPetrolPump = json['isPetrolPump'];
    isMechanic = json['isMechanic'];
    uID = json['uID'];
    userName = json['userName'];
    email = json['email'];
    phoneNo = json['phoneNo'];
    gender = json['gender'];
    profile = json['profile'];
    password = json['password'];
    cardNumber = json['cardNumber'];
    clas = json['clas'].runtimeType == String ? [json['clas']] : json['clas'];
    joinDate = json['dob'] != null ? DateTime.parse(json['dob']) : null;
    address = json['address'];
    balance = json['balance'];
    // Parse 'joinDate' string into DateTime
    joinDate =
        json['joinDate'] != null ? DateTime.parse(json['joinDate']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uID'] = uID;
    data['isPetrolPump'] = isPetrolPump;
    data['isMechanic'] = isMechanic;
    data['userName'] = userName;
    data['email'] = email;
    data['phoneNo'] = phoneNo;
    data['gender'] = gender;
    data['profile'] = profile;
    data['password'] = password;
    data['cardNumber'] = cardNumber;
    data['clas'] = clas;
    data['dob'] = joinDate?.toIso8601String();
    data['address'] = address;
    data['balance'] = balance;
    data['joinDate'] = joinDate?.toIso8601String();
    return data;
  }
}
