import 'dart:convert';

class LoginUserModel {
  final String email;
  final String password;
  LoginUserModel({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'email': email});
    result.addAll({'password': password});

    return result;
  }

  factory LoginUserModel.fromMap(Map<String, dynamic> map) {
    return LoginUserModel(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginUserModel.fromJson(String source) => LoginUserModel.fromMap(json.decode(source));
}
