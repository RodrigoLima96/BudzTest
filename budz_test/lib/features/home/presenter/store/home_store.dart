// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
import '../../../../core/core.dart';
import '../../../features.dart';

part 'home_store.g.dart';

enum HomeStoreState { notStarted, loading, failure, success }

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final GetHomePageInfoUserUsecase getHomePageInfoUserUsecase;

  @observable
  HomeEntity? homeEntity;

  @observable
  HomeStoreState getHomeDataState = HomeStoreState.notStarted;
  String getHomeDataFailureMessage = '';

  _HomeStoreBase({required this.getHomePageInfoUserUsecase});

  @action
  Future<void> getHomePageData() async {
    getHomeDataState = HomeStoreState.loading;
    final result = await getHomePageInfoUserUsecase(NoParams());
    result.fold(
      (failure) {
        getHomeDataFailureMessage = failure.message;
        getHomeDataState = HomeStoreState.failure;
      },
      (homeData) {
        homeEntity = homeData;
        getHomeDataState = HomeStoreState.success;
      },
    );
  }
}
