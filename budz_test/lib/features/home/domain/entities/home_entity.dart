import 'entities.dart';

class HomeEntity {
  final PetEntity petEntity;
  final List<CategoryEntity> categories;
  final List<ArticleEntity> articles;
  final List<BannerEntity> banners;

  HomeEntity({
    required this.petEntity,
    required this.categories,
    required this.articles,
    required this.banners,
  });
}