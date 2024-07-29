sealed class Failure{
  final String message;
  const Failure({required this.message});
}

class UnKnownFailure extends Failure{
  const UnKnownFailure({required super.message});
}

class ServerFailure extends Failure{
  const ServerFailure({required super.message});
}

class DataBaseFailure extends Failure{
  const DataBaseFailure({required super.message});
}
