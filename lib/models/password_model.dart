/*
 * satria
 * password_model.dart
 * Created by Cong Fandi on 7/11/2021
 * email 	: me@congfandi.com
 * website 	: https://www.thengoding.com
 * Copyright © 2021 Cong Fandi. All rights reserved.
 *
 */

import 'package:hive/hive.dart';

import 'service_type.dart';

/// serviceType : {"serviceId":1,"serviceName":"Facebook","serviceUrl":"facebook.com","createdAt":"12 June 2022","updatedAt":"12 June 2022"}
/// passwordId : 1
/// password : "123sdfa@#$dfasd+__(_"
/// createdAt : "12 June 2022"
/// updatedAt : "12 June 2022"
@HiveType(typeId: 1)
class PasswordModel extends HiveObject {
  PasswordModel({
      ServiceType? serviceType, 
      int? passwordId, 
      String? password, 
      String? createdAt, 
      String? updatedAt,}){
    _serviceType = serviceType;
    _passwordId = passwordId;
    _password = password;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  PasswordModel.fromJson(dynamic json) {
    _serviceType = json['serviceType'] != null ? ServiceType.fromJson(json['serviceType']) : null;
    _passwordId = json['passwordId'];
    _password = json['password'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }

  @HiveField(4)
  ServiceType? _serviceType;
  @HiveField(0)
  int? _passwordId;
  @HiveField(1)
  String? _password;
  @HiveField(2)
  String? _createdAt;
  @HiveField(3)
  String? _updatedAt;

  ServiceType? get serviceType => _serviceType;
  int? get passwordId => _passwordId;
  String? get password => _password;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_serviceType != null) {
      map['serviceType'] = _serviceType?.toJson();
    }
    map['passwordId'] = _passwordId;
    map['password'] = _password;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}