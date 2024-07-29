import 'package:filmy/core/utils/error/server_error_model.dart';

final class ServerException implements Exception{

  final ServerErrorModel serverError;

  ServerException({required this.serverError});

  ServerException.fromJson(Map<String,dynamic> json):serverError = ServerErrorModel.fromJson(json);
}

final class DataBaseException implements Exception {
  final String message;
  const DataBaseException({required this.message});
}