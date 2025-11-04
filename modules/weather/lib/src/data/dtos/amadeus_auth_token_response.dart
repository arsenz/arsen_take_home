import 'package:json_annotation/json_annotation.dart';

part 'amadeus_auth_token_response.g.dart';

@JsonSerializable()
class AuthTokenResponse {
  @JsonKey(name: "access_token")
  final String accessToken;

  @JsonKey(name: "token_type")
  final String tokenType;

  @JsonKey(name: "expires_in")
  final int expiresIn;

  AuthTokenResponse({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
  });

  factory AuthTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthTokenResponseToJson(this);
}
