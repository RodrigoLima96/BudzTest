import '../../domain/entities/entities.dart';

class PetModel extends PetEntity {
  PetModel({
    required super.id,
    required super.name,
    required super.gender,
    required super.age,
    required super.weight,
    required super.breed,
    required super.imageUrl,
  });
}
