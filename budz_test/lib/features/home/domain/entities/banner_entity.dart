class BannerEntity {
  final String id;
  final bool status;
  final String audience;
  final String partner;
  final int priority;
  final String link;
  final String targetSpecie;
  final String imageUrl;

  BannerEntity({
    required this.id,
    required this.status,
    required this.audience,
    required this.partner,
    required this.priority,
    required this.link,
    required this.targetSpecie,
    required this.imageUrl,
  });
}