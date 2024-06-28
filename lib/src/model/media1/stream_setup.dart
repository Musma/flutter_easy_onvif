import 'dart:convert';

import 'package:easy_onvif/shared.dart';
import 'package:easy_onvif/soap.dart' show Xmlns;
import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart';

import 'transport.dart';

part 'stream_setup.g.dart';

/// Stream Setup that should be used with the uri
@JsonSerializable()
class StreamSetup implements XmlSerializable {
  /// Defines if a multicast or unicast stream is requested
  /// - enum { 'RTP-Unicast', 'RTP-Multicast' }
  @JsonKey(name: 'Stream')
  final String stream;

  /// Optional element to describe further tunnel options. This element is
  /// normally not needed
  @JsonKey(name: 'Transport')
  final Transport transport;

  StreamSetup({
    required this.stream,
    required this.transport,
  });

  factory StreamSetup.fromJson(Map<String, dynamic> json) =>
      _$StreamSetupFromJson(json);

  Map<String, dynamic> toJson() => _$StreamSetupToJson(this);

  @override
  String toString() => json.encode(toJson());

  @override
  void buildXml(
    XmlBuilder builder, {
    String tag = 'StreamSetup',
    String? namespace = Xmlns.tt,
  }) =>
      builder.element(tag, nest: () {
        // builder.namespace(namespace!); // move to the child element

        builder.element('Stream', nest: () {
          builder.namespace(namespace!); // add namespace to the child element
          builder.text(stream);
        });

        transport.buildXml(builder);
      });
}
