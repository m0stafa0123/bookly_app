import 'package:dio/dio.dart';

abstract class Failure {
  final String? errmessage;
  const Failure({this.errmessage});
}

class ServerFailure extends Failure {
  ServerFailure(String? errmessage) : super(errmessage: errmessage);

  factory ServerFailure.fromDioError(DioException dioexception) {
    switch (dioexception.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout with ApiServer");
      case DioExceptionType.badResponse:
        {
          return ServerFailure.fromResponse(
              dioexception.response?.statusCode ?? 0, dioexception.response?.data);
        }
      case DioExceptionType.cancel:
        return ServerFailure("Request to ApiServer was cancelled");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection to ApiServer failed due to internet connection");
      case DioExceptionType.unknown:
        return ServerFailure("Unexpected error occurred");
      default:
        return ServerFailure("Something went wrong");
    }

  }
  factory ServerFailure.fromResponse(int? statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statuscode == 404) {
      return ServerFailure("Your request not found, Please try later!");
    } else if (statuscode == 500) {
      return ServerFailure("Internal Server error, Please try later!");
    } else {
      return ServerFailure("Something went wrong, Please try later!");
    }
  }
}
