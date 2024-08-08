import '../../domain/entities/entities.dart';

class PetModel extends PetEntity {
  PetModel({
    required super.id,
    required super.name,
    required super.gender,
    required super.age,
    required super.weight,
    required super.breed,
    required super.imageUrl, required super.specie, required super.mainPet,
  });

  factory PetModel.fromJson(Map<String, dynamic> json) {
    return PetModel(
      age: json['age'] ?? '',
      breed: json['breed'] ?? '',
      gender: json['gender'] ?? '',
      id: json['id'] ?? '',
      imageUrl: json['photoUrl'] ?? '',
      name: json['name'] ?? '',
      specie: json['specie'] ?? '',
      weight:  json['weight'] ?? 0.0,
      mainPet: json['mainPet'] ?? '',
    );
  }
}
