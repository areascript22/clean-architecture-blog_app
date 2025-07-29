import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract interface class ConnectionChecker {
  Future<bool> get isConnected;
}

class ConnectionCheckerImpl implements ConnectionChecker {
  final InternetConnectionChecker connectionChecker;
  ConnectionCheckerImpl(this.connectionChecker);
  @override
  Future<bool> get isConnected  async=>connectionChecker.hasConnection;

}
