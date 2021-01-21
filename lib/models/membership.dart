import 'dart:convert';

class Membership {
  String id;
  DateTime startDate;
  DateTime endDate;
  String name;

  Membership({
    this.id,
    this.startDate,
    this.endDate,
    this.name,
  });

  Membership copyWith({
    String id,
    DateTime startDate,
    DateTime endDate,
    String name,
  }) {
    return Membership(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'startDate': startDate?.millisecondsSinceEpoch,
      'endDate': endDate?.millisecondsSinceEpoch,
      'name': name,
    };
  }

  factory Membership.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Membership(
      id: map['id'],
      startDate: DateTime.fromMillisecondsSinceEpoch(map['startDate']),
      endDate: DateTime.fromMillisecondsSinceEpoch(map['endDate']),
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Membership.fromJson(String source) =>
      Membership.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Membership(id: $id, startDate: $startDate, endDate: $endDate, name: $name)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Membership &&
        o.id == id &&
        o.startDate == startDate &&
        o.endDate == endDate &&
        o.name == name;
  }

  @override
  int get hashCode {
    return id.hashCode ^ startDate.hashCode ^ endDate.hashCode ^ name.hashCode;
  }
}
