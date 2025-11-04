import 'package:json_annotation/json_annotation.dart';

part 'location_response.g.dart';

@JsonSerializable()
class LocationResponse {
  final Meta meta;
  final List<LocationData> data;

  LocationResponse({
    required this.meta,
    required this.data,
  });

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LocationResponseToJson(this);
}

@JsonSerializable()
class Meta {
  final int count;
  final MetaLinks? links;

  Meta({
    required this.count,
    required this.links,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class MetaLinks {
  final String self;

  MetaLinks({required this.self});

  factory MetaLinks.fromJson(Map<String, dynamic> json) =>
      _$MetaLinksFromJson(json);

  Map<String, dynamic> toJson() => _$MetaLinksToJson(this);
}

@JsonSerializable()
class LocationData {
  final String? type;
  final String? subType;
  final String name;
  final String? iataCode;
  final Address? address;
  final GeoCode? geoCode;

  LocationData({
    required this.type,
    required this.subType,
    required this.name,
    this.iataCode,
    required this.address,
    required this.geoCode,
  });

  factory LocationData.fromJson(Map<String, dynamic> json) =>
      _$LocationDataFromJson(json);

  Map<String, dynamic> toJson() => _$LocationDataToJson(this);
}

@JsonSerializable()
class Address {
  final String? countryCode;
  final String? stateCode;

  Address({
    required this.countryCode,
    required this.stateCode,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable()
class GeoCode {
  final double? latitude;
  final double? longitude;

  GeoCode({
     this.latitude,
    this.longitude,
  });

  factory GeoCode.fromJson(Map<String, dynamic> json) =>
      _$GeoCodeFromJson(json);

  Map<String, dynamic> toJson() => _$GeoCodeToJson(this);
}
