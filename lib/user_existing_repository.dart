

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_app/data_response.dart';
import 'package:sample_app/rest_api_provider.dart';
import 'package:sample_app/user_existing_request.dart';
import 'package:sample_app/user_existing_response.dart';

final umsVerificationRepositoryProvider = Provider<UmsVerificationRepository>(
  (ref) {
    return UmsVerificationRepository(ref);
  },
  name: 'umsVerificationRepositoryProvider',
  dependencies: [restApiProvider],
);

class UmsVerificationRepository {
  final Ref ref;

  UmsVerificationRepository(this.ref);

  Future<DataResponse<UserExistingResponse>> userExsting(UserExistingRequest request) async {
    print(">>>>> call userExsting");
    try {
      var result = await ref.read(restApiProvider).getUserExisting(request);
      print('>>>>> result 1 : ${result.data}');
      return result;
    } catch (e) {
      // showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }
}