import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const _userAgent = 'tourism_app (github.com/EllieNtasio/tourism_app)';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 20),
      headers: {'User-Agent': _userAgent},
    ),
  );
  ref.onDispose(dio.close);
  return dio;
});
