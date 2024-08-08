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

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      id: json['id'] ?? '',
      status: json['status'] ?? false,
      audience: json['audience'] ?? '',
      partner: json['partner'] ?? '',
      priority: json['priority'] ?? 0,
      link: json['link'] ?? '',
      targetSpecie: json['targetSpecie'] ?? '',
      imageUrl: json['imageURL'] ?? '',
    );
  }
}
