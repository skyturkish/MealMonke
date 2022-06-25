import 'dart:convert';

class RegisterUserModel {
  final String id;
  final String name;
  final String email;
  final int mobileNo;
  final String address;
  final String password;
  final String type;
  final String token;
  RegisterUserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.mobileNo,
    required this.address,
    required this.password,
    required this.type,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'email': email});
    result.addAll({'mobileNo': mobileNo});
    result.addAll({'address': address});
    result.addAll({'password': password});
    result.addAll({'type': type});
    result.addAll({'token': token});

    return result;
  }

  factory RegisterUserModel.fromMap(Map<String, dynamic> map) {
    return RegisterUserModel(
      id: map['_id'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      mobileNo: map['mobileNo']?.toInt() ?? 0,
      address: map['address'] ?? '',
      password: map['password'] ?? '',
      type: map['type'] ?? '',
      token: map['token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterUserModel.fromJson(String source) => RegisterUserModel.fromMap(json.decode(source));
}
