import 'dart:convert';

class User{
  final String id;
  final String name;
  final String username;
  final String email;
  final String password;
  final String token;
  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.password,
    required this.token,
  });

  Map<String,dynamic> toMap(){
    return {
      'id': id,
      'name': name,
      'username':username,
      'email': email,
      'password': password,
      'token': token,
    };
  }

  factory User.fromMap(Map<String,dynamic> map){
    return User(
      id: map['_id']??'', 
      name: map['name']??'', 
      username: map['username']??'', 
      email: map['email']??'', 
      password: map['password']??'', 
      token: map['token']??''
      );
  }

    String toJson() => json.encode(toMap());

    factory User.fromJson(String source) => User.fromMap(json.decode(source));
  User copyWith({
    String? id,
    String? name,
    String? username,
    String? email,
    String? password,
    String? token,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      token: token ?? this.token,
    );
  }
}