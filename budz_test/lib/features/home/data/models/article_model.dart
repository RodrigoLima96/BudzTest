import '../../domain/entities/entities.dart';

class ArticleModel extends ArticleEntity {

  ArticleModel({
    required super.id,
    required super.name,
    required super.title,
    required super.color,
    required super.imageUrl,
  });
}
