import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class NetworkAdapter {
  Future<Response> get({
    required String url,
    Map<String, dynamic>? queryParameters,
  });
}

@Injectable(as: NetworkAdapter)
class NetworkAdapterImpl implements NetworkAdapter {
  final Dio _dio;

  NetworkAdapterImpl(this._dio);

  @override
  Future<Response> get({
    required String url,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response result = await _dio.get(
        url,
        queryParameters: queryParameters,
      );

      return result;
    } catch (e) {
      rethrow;
    }
  }
}
