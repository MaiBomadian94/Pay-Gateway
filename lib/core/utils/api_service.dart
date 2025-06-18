import 'package:dio/dio.dart';

class ApiService {
  Dio _dio = Dio();

  Future<Response> post(
      {required String url, required body, required String token,String? contentType}) async {
    var response = await _dio.post(
      url,
      data: body,
      // options is for headers
      options: Options(

        // content type بيكون دايما application/json ولكن احيانا بتعمل ايرور ف الصح تتعمل كدا
        contentType: contentType,
        headers: {
          'Authorization': 'Bearer $token',
        },
      ),
    );

    return response;
  }
}
