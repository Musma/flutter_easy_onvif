// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_capabilities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkCapabilities _$NetworkCapabilitiesFromJson(Map<String, dynamic> json) =>
    NetworkCapabilities(
      ipFilter: OnvifUtil.nullableMappedToBool(
          json['IPFilter'] as Map<String, dynamic>?),
      zeroConfiguration: OnvifUtil.nullableMappedToBool(
          json['ZeroConfiguration'] as Map<String, dynamic>?),
      ipVersion6: OnvifUtil.nullableMappedToBool(
          json['IPVersion6'] as Map<String, dynamic>?),
      dynDNS: OnvifUtil.nullableMappedToBool(
          json['DynDNS'] as Map<String, dynamic>?),
      extension: json['Extension'] == null
          ? null
          : Extension.fromJson(json['Extension'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkCapabilitiesToJson(
        NetworkCapabilities instance) =>
    <String, dynamic>{
      'IPFilter': instance.ipFilter,
      'ZeroConfiguration': instance.zeroConfiguration,
      'IPVersion6': instance.ipVersion6,
      'DynDNS': instance.dynDNS,
      'Extension': instance.extension,
    };
