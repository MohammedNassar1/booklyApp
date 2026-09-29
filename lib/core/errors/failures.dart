import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromjson(DioError dioError) {
    return switch (dioError.type) {
      DioExceptionType.connectionTimeout => ServerFailure(
        'connection timeout with Apiserver',
      ),
      DioExceptionType.sendTimeout => ServerFailure(
        'Send timeout with Apiserver',
      ),
      DioExceptionType.receiveTimeout => ServerFailure(
        'Receive timeout with Apiserver',
      ),
      DioExceptionType.badCertificate => ServerFailure('BadCertificate'),
      DioExceptionType.badResponse => ServerFailure.fromresponse(
        dioError.response!.statusCode!,
        dioError.response!.data,
      ),
      DioExceptionType.cancel => ServerFailure('The request is Canceled'),
      DioExceptionType.connectionError => ServerFailure('Problem in Internet'),
      DioExceptionType.unknown => ServerFailure(
        'UnKnown Error. please try later',
      ),
      DioExceptionType.transformTimeout => ServerFailure(
        'transformTimeout with ApiServer',
      ),
    };
  }
  factory ServerFailure.fromresponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['errors']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found. please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error.please tyr later!');
    } else {
      return ServerFailure('OOPS There was An Error.Please try again');
    }
  }
}
