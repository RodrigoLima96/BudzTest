import '../../../../../core/core.dart';
import '../../data.dart';

class RemoteHomeDataSourceImpl implements IRemoteHomeDataSource {
  final RemoteTestData remoteTestData;

  RemoteHomeDataSourceImpl({required this.remoteTestData});

  @override
  Future<HomeModel> getHomeData() async {
    try {
      final response = await remoteTestData.getHomeData();
      return response;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
