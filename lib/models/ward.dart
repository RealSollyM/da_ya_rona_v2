import 'dart:convert';

class Ward {
  String id;
  String name;
  String prCouncellorId;
  double longitude;
  double latitude;

  Ward({
    this.id,
    this.name,
    this.prCouncellorId,
    this.longitude,
    this.latitude,
  });

  Ward copyWith({
    String id,
    String name,
    String prCouncellorId,
    double longitude,
    double latitude,
  }) {
    return Ward(
      id: id ?? this.id,
      name: name ?? this.name,
      prCouncellorId: prCouncellorId ?? this.prCouncellorId,
      longitude: longitude ?? this.longitude,
      latitude: latitude ?? this.latitude,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'prCouncellorId': prCouncellorId,
      'longitude': longitude,
      'latitude': latitude,
    };
  }

  factory Ward.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Ward(
      id: map['id'],
      name: map['name'],
      prCouncellorId: map['prCouncellorId'],
      longitude: map['longitude'],
      latitude: map['latitude'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Ward.fromJson(String source) => Ward.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Ward(id: $id, name: $name, prCouncellorId: $prCouncellorId, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Ward &&
        o.id == id &&
        o.name == name &&
        o.prCouncellorId == prCouncellorId &&
        o.longitude == longitude &&
        o.latitude == latitude;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        prCouncellorId.hashCode ^
        longitude.hashCode ^
        latitude.hashCode;
  }
}
