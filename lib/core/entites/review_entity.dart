class ReviewEntity {
  final String name;
  final String image;
  final num rating;
  final String comment;
  final String date;

  ReviewEntity({
    required this.name,
    required this.image,
    required this.rating,
    required this.comment,
    required this.date,
  });
  ReviewEntity toEntity() {
    return ReviewEntity(
      name: name,
      image: image,
      rating: rating,
      comment: comment,
      date: date,
    );
  }
}
