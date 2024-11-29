import 'dart:convert';

import 'package:easy_onvif/util.dart';
import 'package:json_annotation/json_annotation.dart';

import 'float_range.dart';

part 'space_2d.g.dart';

/// The Pan/Tilt limits element should be present for a PTZ Node that supports an
/// absolute Pan/Tilt. If the element is present it signals the support for
/// configurable Pan/Tilt limits. If limits are enabled, the Pan/Tilt movements
/// shall always stay within the specified range. The Pan/Tilt limits are
/// disabled by setting the limits to –INF or +INF.
@JsonSerializable()
class Space2D {
  /// Capability information.
  @JsonKey(name: 'URI', fromJson: OnvifUtil.stringMappedFromXml)
  final String uri;

  @JsonKey(name: 'XRange')
  final FloatRange xRange;

  @JsonKey(name: 'YRange')
  final FloatRange yRange;

  Space2D({required this.uri, required this.xRange, required this.yRange});

  factory Space2D.fromJson(Map<String, dynamic> json) =>
      _$Space2DFromJson(json);

  Map<String, dynamic> toJson() => _$Space2DToJson(this);

  @override
  String toString() => json.encode(toJson());
}
