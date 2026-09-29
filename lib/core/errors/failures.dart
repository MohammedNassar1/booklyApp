import 'package:dio/dio.dart';

abstract class Failures {}

class ServerFailure extends Failures {
  final String errorMessage;
  ServerFailure({required this.errorMessage});
  factory ServerFailure.fromjson(DioError dioError) {
    return switch (dioError.type) {
      DioExceptionType.connectionTimeout => ServerFailure(
        errorMessage: 'connection timeout with Apiserver',
      ),
      DioExceptionType.sendTimeout => ServerFailure(
        errorMessage: 'Send timeout with Apiserver',
      ),
      DioExceptionType.receiveTimeout => ServerFailure(
        errorMessage: 'Receive timeout with Apiserver',
      ),
      DioExceptionType.badCertificate => ServerFailure(
        errorMessage: 'BadCertificate',
      ),
      DioExceptionType.badResponse => ServerFailure.fromresponse(
        dioError.response!.statusCode!,
        dioError.response!.data,
      ),
      DioExceptionType.cancel => ServerFailure(
        errorMessage: 'The request is Canceled',
      ),
      DioExceptionType.connectionError => ServerFailure(
        errorMessage: 'Problem in Internet',
      ),
      DioExceptionType.unknown => ServerFailure(
        errorMessage: 'UnKnown Error. please try later',
      ),
      DioExceptionType.transformTimeout => ServerFailure(
        errorMessage: 'transformTimeout with ApiServer',
      ),
    };
  }
  factory ServerFailure.fromresponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: response['errors']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
        errorMessage: 'Your request not found. please try later!',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errorMessage: 'Internal Server Error.please tyr later!',
      );
    } else {
      return ServerFailure(
        errorMessage: 'OOPS There was An Error.Please try again',
      );
    }
  }
}
