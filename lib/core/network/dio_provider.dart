import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const _userAgent = 'tourism_app (github.com/EllieNtasio/tourism_app)';

/// Shared HTTP client. Feature API clients (Overpass, Open-Meteo, ...)
/// read this provider so timeouts and interceptors live in one place,
/// and tests can override it with a mock.
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
