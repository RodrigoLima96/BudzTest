
import '../../data.dart';

abstract interface class IRemoteHomeDataSource {
  Future<HomeModel> getHomeData();
}