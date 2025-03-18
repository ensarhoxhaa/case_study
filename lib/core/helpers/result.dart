import 'package:case_study/core/exceptions/app_exceptions.dart';

abstract class Result<T> {
  const Result();

  R when<R>({
    required R Function(T data) success,
    required R Function(AppException exception) failure,
  });

  R maybeWhen<R>({
    required R Function() orElse, R Function(T data)? success,
    R Function(AppException exception)? failure,
  });
}

class Success<T> extends Result<T> {
  const Success(this.data);
  final T data;

  @override
  R when<R>({
    required R Function(T data) success,
    required R Function(AppException exception) failure,
  }) {
    return success(data);
  }

  @override
  R maybeWhen<R>({
    required R Function() orElse, R Function(T data)? success,
    R Function(AppException exception)? failure,
  }) {
    return success != null ? success(data) : orElse();
  }
}

class Failure<T> extends Result<T> {
  const Failure(this.exception);
  final AppException exception;

  @override
  R when<R>({
    required R Function(T data) success,
    required R Function(AppException exception) failure,
  }) {
    return failure(exception);
  }

  @override
  R maybeWhen<R>({
    required R Function() orElse, R Function(T data)? success,
    R Function(AppException exception)? failure,
  }) {
    return failure != null ? failure(exception) : orElse();
  }
}
