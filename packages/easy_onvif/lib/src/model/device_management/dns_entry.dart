import 'dart:convert';

import 'package:easy_onvif/util.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dns_entry.g.dart';

/// DNS address.
@JsonSerializable()
class DnsEntry {
  /// Indicates if the address is an IPv4 or IPv6 address.
  @JsonKey(name: 'Type', fromJson: OnvifUtil.stringMappedFromXml)
  final String type;

  /// IPv4 address.
  @JsonKey(name: 'IPv4Address', fromJson: OnvifUtil.nullableStringMappedFromXml)
  final String? ipv4Address;

  /// IPv6 address.
  @JsonKey(name: 'IPv6Address', fromJson: OnvifUtil.nullableStringMappedFromXml)
  final String? ipv6Address;

  DnsEntry({
    required this.type,
    required this.ipv4Address,
    required this.ipv6Address,
  });

  factory DnsEntry.fromJson(Map<String, dynamic> json) =>
      _$DnsEntryFromJson(json);

  Map<String, dynamic> toJson() => _$DnsEntryToJson(this);

  @override
  String toString() => json.encode(toJson());
}
