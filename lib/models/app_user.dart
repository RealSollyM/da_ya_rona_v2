import 'dart:convert';

class AppUser {
  String id;
  String name;
  String email;
  String phoneNumber;

  AppUser({
    this.id,
    this.name,
    this.email,
    this.phoneNumber,
  });

  AppUser copyWith({
    String id,
    String name,
    String email,
    String phoneNumber,
  }) {
    return AppUser(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
    };
  }

  factory AppUser.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return AppUser(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      phoneNumber: map['phoneNumber'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AppUser.fromJson(String source) =>
      AppUser.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is AppUser &&
        o.id == id &&
        o.name == name &&
        o.email == email &&
        o.phoneNumber == phoneNumber;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ email.hashCode ^ phoneNumber.hashCode;
  }
}
