import 'package:e_commerce_app/core/entites/product_entity.dart';
import 'package:e_commerce_app/core/entites/review_entity.dart';
import 'package:e_commerce_app/core/helper_function.dart/get_avg_rating.dart';
import 'package:e_commerce_app/core/models/review_model.dart';

class ProductModel {
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
  final num averageRating ;
  final num ratingCount = 0;
  final num sellingCount;
  final List<ReviewEntity> reviews;
  ProductModel({
    required this.averageRating,
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
    required this.sellingCount,
    required this.reviews,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      averageRating: getAvgRating(json['reviews'] != null
          ? List<ReviewEntity>.from(
              json['reviews'].map((e) => ReviewModel.fromJson(e)))
          : []),
      name: json['name'],
      price: json['price'],
      code: json['code'],
      description: json['description'],
      isFeatured: json['isFeatured'],
      expiresInMonths: json['expiresInMonths'],
      isOrganic: json['isOrganic'],
      numberOfCalories: json['numberOfCalories'],
      unitAmount: json['unitAmount'],
      imageUrl: json['imageUrl'],
      sellingCount: json['sellingCount'],
      reviews:
          json['reviews'] != null
              ? List<ReviewEntity>.from(
                json['reviews'].map((review) => ReviewModel.fromJson(review)),
              )
              : [],
    );
  }

  ProductEntity toEntity() {
    return ProductEntity(
      name: name,
      price: price,
      code: code,
      description: description,
      imageUrl: imageUrl ?? '',
      isFeatured: isFeatured,
      expiresInMonths: expiresInMonths,
      isOrganic: isOrganic,
      numberOfCalories: numberOfCalories,
      unitAmount: unitAmount,
      reviews: reviews.map((review) => review.toEntity()).toList(),
    );
  }
}


