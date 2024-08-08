import '../../domain/entities/entities.dart';

class ArticleModel extends ArticleEntity {
  ArticleModel({
    required super.id,
    required super.name,
    required super.title,
    required super.color,
    required super.imageUrl,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      id: json['id'] ?? '',
      name: json['categoryName'] ?? '',
      title: json['title'] ?? '',
      color: json['colorCode'] ?? '',
      imageUrl: json['imageUrlSquare'] ?? '',
    );
  }
}
