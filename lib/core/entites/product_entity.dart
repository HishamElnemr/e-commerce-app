import 'package:e_commerce_app/core/entites/review_entity.dart';

class ProductEntity {
  final String name;
  final num price;
  final String code;
  final String description;
  String? imageUrl;
  final bool isFeatured;
  final int expiresInMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitAmount;
  final num averageRating = 0.0;
  final num ratingCount = 0;
  final List<ReviewEntity> reviews;
  ProductEntity({
    required this.name,
    required this.price,
    required this.code,
    required this.description,
    required this.isFeatured,
    required this.expiresInMonths,
    this.isOrganic = false,
    required this.numberOfCalories,
    required this.unitAmount,
    this.imageUrl,
    required this.reviews,
  });
}
