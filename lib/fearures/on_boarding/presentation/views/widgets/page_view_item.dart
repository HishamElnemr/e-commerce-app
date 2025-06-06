import 'package:e_commerce_app/app_color.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/services/shared_preferences_singleton.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.imagePath,
    required this.backGround,
    required this.subTitle,
    required this.title,
    required this.isFirstPage,
  });

  final String imagePath, backGround, subTitle;
  final Widget title;
  final bool isFirstPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backGround,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(imagePath, height: 200),
              ),
              Visibility(
                visible: isFirstPage,
                child: Positioned(
                  top: 0,
                  child: GestureDetector(
                    onTap: () {
                      Prefs.setBool(kIsOnBoardingViewSeen, true);
                      Navigator.of(
                        context,
                      ).pushReplacementNamed(LoginView.routeName);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        'تخط',
                        style: TextStyles.regular13.copyWith(
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 64),
        title,
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            textAlign: TextAlign.center,
            subTitle,
            style: TextStyles.semiBold13.copyWith(color: AppColors.greyColor),
          ),
        ),
      ],
    );
  }
}
