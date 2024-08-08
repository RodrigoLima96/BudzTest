import '../../../data.dart';

class RemoteTestData {
  getHomeData() {
    final HomeModel homeData = HomeModel(
      petEntity: PetModel(
        age: '',
        breed: '',
        gender: '',
        id: '',
        imageUrl: '',
        name: '',
        weight: 1,
      ),
      categories: [
        CategoryModel(
          id: 'id',
          name: 'name',
          imageUrl: 'imageUrl',
        ),
      ],
      articles: [
        ArticleModel(
          id: 'id',
          name: 'name',
          title: 'title',
          color: 'color',
          imageUrl: 'imageUrl',
        ),
      ],
      banners: [
        BannerModel(
          id: 'id',
          status: true,
          audience: 'audience',
          partner: 'partner',
          priority: 7,
          link: 'link',
          targetSpecie: 'targetSpecie',
          imageUrl: 'imageUrl',
        ),
      ],
    );

    return homeData;
  }
}