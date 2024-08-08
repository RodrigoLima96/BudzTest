import 'package:budz_test/initial_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'features/features.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => const InitialPage());
  }

  @override
  List<Module> get imports => [HomeModule()];
}