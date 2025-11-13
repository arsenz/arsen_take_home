import 'package:core/src/data/dtos/amadeus_auth_token_response.dart';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

@RestApi(baseUrl: "https://test.api.amadeus.com/v1")
abstract class AuthApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  /// Request OAuth token
  @POST("/security/oauth2/token")
  @FormUrlEncoded()
  Future<AuthTokenResponse> getAuthToken(
    @Field("grant_type") String grantType,
    @Field("client_id") String clientId,
    @Field("client_secret") String clientSecret,
  );
}
