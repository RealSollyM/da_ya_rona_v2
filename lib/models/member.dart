import 'dart:convert';

import 'package:da_ya_rona/models/models.dart';
import 'package:flutter/foundation.dart';

class MemberModel {
  String id;
  String firstName;
  String surname;
  String birthDate;
  List<Ward> wards;
  List<Membership> memberships;
  bool isActive;
  List<Subscription> subscriptions;

  MemberModel({
    this.id,
    this.firstName,
    this.surname,
    this.birthDate,
    this.wards,
    this.memberships,
    this.isActive,
    this.subscriptions,
  });

  MemberModel copyWith({
    String id,
    String firstName,
    String surname,
    String birthDate,
    List<Ward> wards,
    List<Membership> memberships,
    bool isActive,
    List<Subscription> subscriptions,
  }) {
    return MemberModel(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      surname: surname ?? this.surname,
      birthDate: birthDate ?? this.birthDate,
      wards: wards ?? this.wards,
      memberships: memberships ?? this.memberships,
      isActive: isActive ?? this.isActive,
      subscriptions: subscriptions ?? this.subscriptions,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'surname': surname,
      'birthDate': birthDate,
      'wards': wards?.map((x) => x?.toMap())?.toList(),
      'memberships': memberships?.map((x) => x?.toMap())?.toList(),
      'isActive': isActive,
      'subscriptions': subscriptions?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory MemberModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return MemberModel(
      id: map['id'],
      firstName: map['firstName'],
      surname: map['surname'],
      birthDate: map['birthDate'],
      wards: List<Ward>.from(map['wards']?.map((x) => Ward.fromMap(x))),
      memberships: List<Membership>.from(
          map['memberships']?.map((x) => Membership.fromMap(x))),
      isActive: map['isActive'],
      subscriptions: List<Subscription>.from(
          map['subscriptions']?.map((x) => Subscription.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory MemberModel.fromJson(String source) =>
      MemberModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MemberModel(id: $id, firstName: $firstName, surname: $surname, birthDate: $birthDate, wards: $wards, memberships: $memberships, isActive: $isActive, subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is MemberModel &&
        o.id == id &&
        o.firstName == firstName &&
        o.surname == surname &&
        o.birthDate == birthDate &&
        listEquals(o.wards, wards) &&
        listEquals(o.memberships, memberships) &&
        o.isActive == isActive &&
        listEquals(o.subscriptions, subscriptions);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        firstName.hashCode ^
        surname.hashCode ^
        birthDate.hashCode ^
        wards.hashCode ^
        memberships.hashCode ^
        isActive.hashCode ^
        subscriptions.hashCode;
  }
}
