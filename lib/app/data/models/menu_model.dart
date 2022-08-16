// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class MenuModel {
  final int id;
  final String label;
  final String route;
  final IconData icone;
  MenuModel({
    required this.id,
    required this.label,
    required this.route,
    required this.icone,
  });

  MenuModel copyWith({
    int? id,
    String? label,
    String? route,
    IconData? icone,
  }) {
    return MenuModel(
      id: id ?? this.id,
      label: label ?? this.label,
      route: route ?? this.route,
      icone: icone ?? this.icone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'label': label,
      'route': route,
      'icone': icone.codePoint,
    };
  }

  factory MenuModel.fromMap(Map<String, dynamic> map) {
    return MenuModel(
      id: map['id'] as int,
      label: map['label'] as String,
      route: map['route'] as String,
      icone: IconData(map['icone'] as int, fontFamily: 'MaterialIcons'),
    );
  }

  String toJson() => json.encode(toMap());

  factory MenuModel.fromJson(String source) => MenuModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MenuModel(id: $id, label: $label, route: $route, icone: $icone)';
  }

  @override
  bool operator ==(covariant MenuModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.label == label && other.route == route && other.icone == icone;
  }

  @override
  int get hashCode {
    return id.hashCode ^ label.hashCode ^ route.hashCode ^ icone.hashCode;
  }
}
