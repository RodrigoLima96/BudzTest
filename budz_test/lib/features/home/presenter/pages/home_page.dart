import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/core.dart';
import '../presenter.dart';
import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeStore = Modular.get<HomeStore>();

  @override
  void initState() {
    super.initState();
    _loadHomeData();
  }

  _loadHomeData() async {
    await homeStore.getHomePageData();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        reaction((_) => homeStore.getHomeDataState, (HomeStoreState state) {
          if (state == HomeStoreState.failure) {
            showCustomSnackbar(
              context,
              homeStore.getHomeDataFailureMessage,
            );
          }
        });
        return homeStore.getHomeDataState == HomeStoreState.loading
            ? const LoaderWidget()
            : HomePageBody(homeEntity: homeStore.homeEntity!);
      },
    );
  }
}
