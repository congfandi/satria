/*
 * satria
 * service_type.dart
 * Created by Cong Fandi on 7/11/2021
 * email 	: me@congfandi.com
 * website 	: https://www.thengoding.com
 * Copyright © 2021 Cong Fandi. All rights reserved.
 *
 */

import 'package:hive/hive.dart';

/// serviceId : 1
/// serviceName : "Facebook"
/// serviceUrl : "facebook.com"
/// createdAt : "12 June 2022"
/// updatedAt : "12 June 2022"

@HiveType(typeId: 2)
class ServiceType extends HiveObject{
  ServiceType({
      int? serviceId, 
      String? serviceName, 
      String? serviceUrl, 
      String? createdAt, 
      String? updatedAt,}){
    _serviceId = serviceId;
    _serviceName = serviceName;
    _serviceUrl = serviceUrl;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  ServiceType.fromJson(dynamic json) {
    _serviceId = json['serviceId'];
    _serviceName = json['serviceName'];
    _serviceUrl = json['serviceUrl'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }

  @HiveField(0)
  int? _serviceId;
  @HiveField(1)
  String? _serviceName;
  @HiveField(2)
  String? _serviceUrl;
  @HiveField(3)
  String? _createdAt;
  @HiveField(4)
  String? _updatedAt;

  int? get serviceId => _serviceId;
  String? get serviceName => _serviceName;
  String? get serviceUrl => _serviceUrl;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['serviceId'] = _serviceId;
    map['serviceName'] = _serviceName;
    map['serviceUrl'] = _serviceUrl;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}