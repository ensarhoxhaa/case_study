abstract class AppException implements Exception {

  AppException(this.message, this.code);
  final String message;
  final String code;

  @override
  String toString() => 'AppException: [$code] $message';
}

class ServerException extends AppException {
  ServerException(super.message, super.code);
}

class UnauthorizedException extends AppException {
  UnauthorizedException(super.message, super.code);
}

class BadRequestException extends AppException {
  BadRequestException(super.message, super.code);
}

class ForbiddenException extends AppException {
  ForbiddenException(super.message, super.code);
}

class NotFoundException extends AppException {
  NotFoundException(super.message, super.code);
}

class InternalServerErrorException extends AppException {
  InternalServerErrorException(super.message, super.code);
}

class ServiceUnavailableException extends AppException {
  ServiceUnavailableException(super.message, super.code);
}

class GatewayTimeoutException extends AppException {
  GatewayTimeoutException(super.message, super.code);
}

class UnknownApiException extends AppException {
  UnknownApiException(super.message, super.code);
}

class UnknownException extends AppException {
  UnknownException([String message = 'An unknown error occurred'])
      : super('unknown_error', message);
}

class NetworkException extends AppException {
  NetworkException([String message = 'A network error occurred'])
      : super('network_error', message);
}
