import 'package:e_commerce_app/core/entites/product_entity.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';

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
    imageUrl: Assets.assetsImagesWatermelonTest,
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
