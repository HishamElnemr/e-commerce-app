import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/fearures/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          imagePath: Assets.assetsImagesFruitBasketAmico_1,
          backGround: Assets.assetsImagesOnBoardingFirstPageBg,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('مرحبًا بك في '),
              const Text('Fruit'),
              const Text('Hub'),
            ],
          ),
        ),
        PageViewItem(
          imagePath: Assets.assetsImagesFruitBasketAmico_1,
          backGround: Assets.assetsImagesOnBoardingFirstPageBg,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('مرحبًا بك في '),
              const Text('Fruit'),
              const Text('Hub'),
            ],
          ),
        ),
      ],
    );
  }
}
