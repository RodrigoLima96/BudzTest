// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStoreBase, Store {
  late final _$homeEntityAtom =
      Atom(name: '_HomeStoreBase.homeEntity', context: context);

  @override
  HomeEntity? get homeEntity {
    _$homeEntityAtom.reportRead();
    return super.homeEntity;
  }

  @override
  set homeEntity(HomeEntity? value) {
    _$homeEntityAtom.reportWrite(value, super.homeEntity, () {
      super.homeEntity = value;
    });
  }

  late final _$getHomeDataStateAtom =
      Atom(name: '_HomeStoreBase.getHomeDataState', context: context);

  @override
  HomeStoreState get getHomeDataState {
    _$getHomeDataStateAtom.reportRead();
    return super.getHomeDataState;
  }

  @override
  set getHomeDataState(HomeStoreState value) {
    _$getHomeDataStateAtom.reportWrite(value, super.getHomeDataState, () {
      super.getHomeDataState = value;
    });
  }

  late final _$showPetDetailsAtom =
      Atom(name: '_HomeStoreBase.showPetDetails', context: context);

  @override
  bool get showPetDetails {
    _$showPetDetailsAtom.reportRead();
    return super.showPetDetails;
  }

  @override
  set showPetDetails(bool value) {
    _$showPetDetailsAtom.reportWrite(value, super.showPetDetails, () {
      super.showPetDetails = value;
    });
  }

  late final _$getHomePageDataAsyncAction =
      AsyncAction('_HomeStoreBase.getHomePageData', context: context);

  @override
  Future<void> getHomePageData() {
    return _$getHomePageDataAsyncAction.run(() => super.getHomePageData());
  }

  late final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase', context: context);

  @override
  dynamic showOrHidePetDetails() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.showOrHidePetDetails');
    try {
      return super.showOrHidePetDetails();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
homeEntity: ${homeEntity},
getHomeDataState: ${getHomeDataState},
showPetDetails: ${showPetDetails}
    ''';
  }
}
