import 'package:e_commerce_app/core/entites/product_entity.dart';

ProductEntity getDummyProduct() {
  return  ProductEntity(
    name: 'Apple',
    code: '123',
    description: 'Fresh apple',
    price: 2.5,
    reviews: [],
    expiresInMonths: 6,
    numberOfCalories: 100,
    unitAmount: 1,
    isOrganic: true,
    isFeatured: true,
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1AKF7LelsXtbK8YAYYdiPrDMZdFd74ZTgkQ&s',
  );
}

List<ProductEntity> getDummyProducts() {
  return [
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
  ];
}
