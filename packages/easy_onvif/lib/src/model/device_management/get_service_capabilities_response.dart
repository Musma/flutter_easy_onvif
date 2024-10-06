import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'device_service_capabilities.dart';

part 'get_service_capabilities_response.g.dart';

/// The capabilities for the device service is returned in the Capabilities
/// element.
@JsonSerializable()
class GetServiceCapabilitiesResponse {
  /// The capabilities for the device service is returned in the Capabilities
  /// element.
  @JsonKey(name: 'Capabilities')
  final DeviceServiceCapabilities capabilities;

  GetServiceCapabilitiesResponse({required this.capabilities});

  factory GetServiceCapabilitiesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetServiceCapabilitiesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetServiceCapabilitiesResponseToJson(this);

  @override
  String toString() => json.encode(toJson());
}
