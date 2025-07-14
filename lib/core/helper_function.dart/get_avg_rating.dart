import 'package:e_commerce_app/core/entites/review_entity.dart';

getAvgRating(List<ReviewEntity> reviews) {
  var sum = 0.0;
  for (var review in reviews) {
    sum += review.rating;
  }
  return reviews.isEmpty ? 0.0 : sum / reviews.length;
}
