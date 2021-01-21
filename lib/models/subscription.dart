import 'dart:convert';

class Subscription {
  String id;
  String name;

  Subscription({
    this.id,
    this.name,
  });

  Subscription copyWith({
    String id,
    String name,
  }) {
    return Subscription(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory Subscription.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Subscription(
      id: map['id'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Subscription.fromJson(String source) =>
      Subscription.fromMap(json.decode(source));

  @override
  String toString() => 'SubScription(id: $id, name: $name)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Subscription && o.id == id && o.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
