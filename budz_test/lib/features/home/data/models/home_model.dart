import '../../domain/domain.dart';
import '../data.dart';

class HomeModel extends HomeEntity {
  HomeModel({
    required super.petEntity,
    required super.categories,
    required super.articles,
    required super.banners,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      petEntity: PetModel.fromJson(json['pet']),
      categories: (json['categories'] as List)
          .map((data) => CategoryModel.fromJson(data))
          .toList(),
      articles: (json['articles'] as List)
          .map((data) => ArticleModel.fromJson(data))
          .toList(),
      banners: (json['banners'] as List)
          .map((data) => BannerModel.fromJson(data))
          .toList(),
    );
  }
}
