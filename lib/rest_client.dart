
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sample_app/data_response.dart';
import 'package:sample_app/user_existing_request.dart';
import 'package:sample_app/user_existing_response.dart';
part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/user/existing')
  Future<DataResponse<UserExistingResponse>> getUserExisting(@Queries() UserExistingRequest request);
}