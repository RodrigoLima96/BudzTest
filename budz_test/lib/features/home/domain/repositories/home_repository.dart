import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../entities/home_entity.dart';

abstract interface class IHomeRepository {
  Future<Either<Failure, HomeEntity>> getHomeInfo();
}