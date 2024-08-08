import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

class HomeRepositoryImpl implements IHomeRepository {
  final IRemoteHomeDataSource remoteDataSource;

  HomeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, HomeEntity>> getHomeInfo() async {
    try {
      final homeEntity = await remoteDataSource.getHomeData();
      return right(homeEntity);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }
}
