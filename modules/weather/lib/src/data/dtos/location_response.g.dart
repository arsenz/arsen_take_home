// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationResponse _$LocationResponseFromJson(Map<String, dynamic> json) =>
    LocationResponse(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => LocationData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocationResponseToJson(LocationResponse instance) =>
    <String, dynamic>{'meta': instance.meta, 'data': instance.data};

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
  count: (json['count'] as num).toInt(),
  links: json['links'] == null
      ? null
      : MetaLinks.fromJson(json['links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
  'count': instance.count,
  'links': instance.links,
};

MetaLinks _$MetaLinksFromJson(Map<String, dynamic> json) =>
    MetaLinks(self: json['self'] as String);

Map<String, dynamic> _$MetaLinksToJson(MetaLinks instance) => <String, dynamic>{
  'self': instance.self,
};

LocationData _$LocationDataFromJson(Map<String, dynamic> json) => LocationData(
  type: json['type'] as String?,
  subType: json['subType'] as String?,
  name: json['name'] as String,
  iataCode: json['iataCode'] as String?,
  address: json['address'] == null
      ? null
      : Address.fromJson(json['address'] as Map<String, dynamic>),
  geoCode: json['geoCode'] == null
      ? null
      : GeoCode.fromJson(json['geoCode'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LocationDataToJson(LocationData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'subType': instance.subType,
      'name': instance.name,
      'iataCode': instance.iataCode,
      'address': instance.address,
      'geoCode': instance.geoCode,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
  countryCode: json['countryCode'] as String?,
  stateCode: json['stateCode'] as String?,
);

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
  'countryCode': instance.countryCode,
  'stateCode': instance.stateCode,
};

GeoCode _$GeoCodeFromJson(Map<String, dynamic> json) => GeoCode(
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$GeoCodeToJson(GeoCode instance) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
