import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'ptz_position.dart';

part 'ptz_status.g.dart';

@JsonSerializable(explicitToJson: true)
class PtzStatus {
  @JsonKey(name: 'Position')
  final PtzPosition position;

  @JsonKey(name: 'Error')
  dynamic xmlError;

  @JsonKey(name: 'UtcTime')
  dynamic xmlUtcTime;

  String get error => xmlError['\$'];

  DateTime get utcTime => DateTime.parse(xmlUtcTime['\$']);

  PtzStatus({
    required this.position,
    this.xmlError,
    this.xmlUtcTime,
  });

  factory PtzStatus.fromJson(Map<String, dynamic> json) =>
      _$PtzStatusFromJson(json);

  Map<String, dynamic> toJson() => _$PtzStatusToJson(this);

  @override
  String toString() => json.encode(toJson());
}
