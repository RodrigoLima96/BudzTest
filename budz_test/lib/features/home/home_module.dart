import 'package:flutter_modular/flutter_modular.dart';

import 'home.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    // Usecases
    i.add(() => GetHomePageInfoUserUsecase(homeRepository: i()));

    // repositories
    i.addLazySingleton<IHomeRepository>(
        () => HomeRepositoryImpl(remoteDataSource: i()));

    // datasources
    i.addLazySingleton<IRemoteHomeDataSource>(
        () => RemoteHomeDataSourceImpl(remoteTestData: i()));

    // remote test data
    i.addLazySingleton(() => RemoteTestData());

    // store
    i.addLazySingleton(() => HomeStore(getHomePageInfoUserUsecase: i()));
  }
}
