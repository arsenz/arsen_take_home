import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather/src/data/dtos/location_response.dart';

part 'amadeus_api.g.dart';

@RestApi(baseUrl: "https://test.api.amadeus.com/v1")
abstract class AmadeusApi {
  factory AmadeusApi(Dio dio, {String baseUrl}) = _AmadeusApi;

  

  /// GET cities by keyword
  @GET("/reference-data/locations/cities")
  Future<LocationResponse> getCities({
    @Query('keyword') required String searchQuery,
    @Query('max') required int max,
  });
}
