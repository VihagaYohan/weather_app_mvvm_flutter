class AppException implements Exception {
  final String? _prefix;
  final String? _message;

  AppException([this._prefix, this._message]);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

class InternetException extends AppException {
  InternetException([String? message])
      : super(message, "Internet error issues");
}

class RequestTimeOut extends AppException {
  RequestTimeOut([String? message])
      : super(message, 'The request has timed out');
}

class ServerError extends AppException {
  ServerError([String? message])
      : super(message, 'An internal server error occurred');
}

class InvalidUrlException extends AppException {
  InvalidUrlException([String? message])
      : super(message, "The URL provided is invlaid");
}

class FetchDataException extends AppException {
  FetchDataException([String? prefix, String? message])
      : super(message, 'Failed fetch data from server');
}
