import 'package:budz_test/features/home/domain/entities/entities.dart';

class BannerModel extends BannerEntity {
  BannerModel({
    required super.id,
    required super.status,
    required super.audience,
    required super.partner,
    required super.priority,
    required super.link,
    required super.targetSpecie,
    required super.imageUrl,
  });
}
