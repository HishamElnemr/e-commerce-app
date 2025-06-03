import 'dart:io';

import 'package:e_commerce_app/core/entites/add_product_entity_input.dart';
import 'package:e_commerce_app/core/entites/review_entity.dart';
import 'package:e_commerce_app/core/models/review_model.dart';

class ProductModel {
  final String name;
  final num price;
  final String code;
  final String description;
  final File image;
  String? imageUrl;
  final bool isFeatured;
  final int expiresInMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitAmount;
  final num averageRating = 0.0;
  final num ratingCount = 0;
  final List<ReviewEntity> reviews;
  ProductModel({
    required this.name,
    required this.price,
    required this.code,
    required this.description,
    required this.image,
    required this.isFeatured,
    required this.expiresInMonths,
    this.isOrganic = false,
    required this.numberOfCalories,
    required this.unitAmount,
    this.imageUrl,
    required this.reviews,
  });

  factory ProductModel.fromEntity(ProductEntity productEntity) {
    return ProductModel(
      name: productEntity.name,
      price: productEntity.price,
      code: productEntity.code,
      description: productEntity.description,
      image: productEntity.image,
      isFeatured: productEntity.isFeatured,
      imageUrl: productEntity.imageUrl,
      expiresInMonths: productEntity.expiresInMonths,
      isOrganic: productEntity.isOrganic,
      numberOfCalories: productEntity.numberOfCalories,
      unitAmount: productEntity.unitAmount,
      reviews: productEntity.reviews,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'code': code,
      'description': description,
      'imageUrl': imageUrl,
      'isFeatured': isFeatured,
      'expiresInMonths': expiresInMonths,
      'isOrganic': isOrganic,
      'numberOfCalories': numberOfCalories,
      'unitAmount': unitAmount,
      'reviews':
          reviews
              .map((review) => ReviewModel.fromEntity(review).toJson())
              .toList(),
    };
  }
}
