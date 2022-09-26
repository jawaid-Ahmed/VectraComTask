import 'package:meta/meta.dart';
import 'dart:convert';

class Animal {
  Animal({
    required this.name,
    required this.latinName,
    required this.animalType,
    required this.activeTime,
    required this.lengthMin,
    required this.lengthMax,
    required this.weightMin,
    required this.weightMax,
    required this.lifespan,
    required this.habitat,
    required this.diet,
    required this.geoRange,
    required this.imageLink,
    required this.id,
  });

  String name;
  String latinName;
  String animalType;
  String activeTime;
  String lengthMin;
  String lengthMax;
  String weightMin;
  String weightMax;
  String lifespan;
  String habitat;
  String diet;
  String geoRange;
  String imageLink;
  int id;

  factory Animal.fromRawJson(String str) => Animal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Animal.fromJson(Map<String, dynamic> json) => Animal(
    name: json["name"] == null ? null : json["name"],
    latinName: json["latin_name"] == null ? null : json["latin_name"],
    animalType: json["animal_type"] == null ? null : json["animal_type"],
    activeTime: json["active_time"] == null ? null : json["active_time"],
    lengthMin: json["length_min"] == null ? null : json["length_min"],
    lengthMax: json["length_max"] == null ? null : json["length_max"],
    weightMin: json["weight_min"] == null ? null : json["weight_min"],
    weightMax: json["weight_max"] == null ? null : json["weight_max"],
    lifespan: json["lifespan"] == null ? null : json["lifespan"],
    habitat: json["habitat"] == null ? null : json["habitat"],
    diet: json["diet"] == null ? null : json["diet"],
    geoRange: json["geo_range"] == null ? null : json["geo_range"],
    imageLink: json["image_link"] == null ? null : json["image_link"],
    id: json["id"] == null ? null : json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "latin_name": latinName == null ? null : latinName,
    "animal_type": animalType == null ? null : animalType,
    "active_time": activeTime == null ? null : activeTime,
    "length_min": lengthMin == null ? null : lengthMin,
    "length_max": lengthMax == null ? null : lengthMax,
    "weight_min": weightMin == null ? null : weightMin,
    "weight_max": weightMax == null ? null : weightMax,
    "lifespan": lifespan == null ? null : lifespan,
    "habitat": habitat == null ? null : habitat,
    "diet": diet == null ? null : diet,
    "geo_range": geoRange == null ? null : geoRange,
    "image_link": imageLink == null ? null : imageLink,
    "id": id == null ? null : id,
  };
}
