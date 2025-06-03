
import 'package:e_commerce_app/core/entites/review_entity.dart';

class ReviewModel {
  final String name;
  final String image;
  final num rating;
  final String comment;
  final String date;

  ReviewModel({
    required this.name,
    required this.image,
    required this.rating,
    required this.comment,
    required this.date,
  });
  factory ReviewModel.fromEntity(ReviewEntity reviewEntity) {
    return ReviewModel(
      name: reviewEntity.name,
      image: reviewEntity.image,
      rating: reviewEntity.rating,
      comment: reviewEntity.comment,
      date: reviewEntity.date,
    );
  }
  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      name: json['name'] as String,
      image: json['image'] as String,
      rating: json['rating'] as num,
      comment: json['comment'] as String,
      date: json['date'] as String,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'image': image,
      'rating': rating,
      'comment': comment,
      'date': date,
    };
  }
}
