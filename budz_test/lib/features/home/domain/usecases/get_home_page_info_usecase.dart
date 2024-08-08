import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../entities/home_entity.dart';
import '../repositories/home_repository.dart';

class GetHomePageInfoUserUsecase implements Usecase<HomeEntity, NoParams> {
  final IHomeRepository homeRepository;

  GetHomePageInfoUserUsecase({required this.homeRepository});
  @override
  Future<Either<Failure, HomeEntity>> call(NoParams parmas) async {
    return await homeRepository.getHomeInfo();
  }
}