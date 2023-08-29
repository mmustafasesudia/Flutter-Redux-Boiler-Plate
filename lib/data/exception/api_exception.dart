class ApiException implements Exception {
  final String message;

  ApiException(this.message);

  factory ApiException.fromJson(Map<String, dynamic> json) {
    return ApiException(json['message'] ?? 'An error occurred');
  }

  @override
  String toString() => message;
}
