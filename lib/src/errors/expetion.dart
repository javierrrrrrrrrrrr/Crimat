class ServerException implements Exception {
  final String message;

  ServerException([this.message = 'Error en el servidor']);

  @override
  String toString() {
    return 'ServerException: $message';
  }
}

class CacheException implements Exception {}
