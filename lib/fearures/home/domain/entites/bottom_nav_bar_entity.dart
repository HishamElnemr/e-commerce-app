import 'package:e_commerce_app/core/utils/app_images.dart';

class BottomNavBarEntity {
  final String activeImage;
  final String inActiveImage;
  final String name;

  BottomNavBarEntity({
    required this.activeImage,
    required this.inActiveImage,
    required this.name,
  });
}

List<BottomNavBarEntity>get bottomNavBarItems => [
  BottomNavBarEntity(
    activeImage: Assets.assetsImagesVuesaxBoldHome,
    inActiveImage: Assets.assetsImagesVuesaxOutlineHome,
    name: 'الرئيسية',
  ),
  BottomNavBarEntity(
    activeImage: Assets.assetsImagesVuesaxBoldProducts,
    inActiveImage: Assets.assetsImagesVuesaxOutlineProducts,
    name: 'المنتجات',
  ),
  BottomNavBarEntity(
    activeImage: Assets.assetsImagesVuesaxBoldShoppingCart,
    inActiveImage: Assets.assetsImagesVuesaxOutlineShoppingCart,
    name: 'السلة',
  ),
  BottomNavBarEntity(
    activeImage: Assets.assetsImagesVuesaxBoldUser,
    inActiveImage: Assets.assetsImagesVuesaxOutlineUser,
    name: 'الحساب',
  ),
];
