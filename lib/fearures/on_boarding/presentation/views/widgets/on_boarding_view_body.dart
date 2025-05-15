import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_app/app_color.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/services/shared_preferences_singleton.dart';
import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/login_view.dart';
import 'package:e_commerce_app/fearures/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  int currentPage = 0;
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: currentPage);
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: pageController)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color:
                currentPage == 1
                    ? AppColors.primaryColor
                    : AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        const SizedBox(height: 24),
        Visibility(
          visible: currentPage == 0 ? false : true,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CustomButton(
              onPressed: () {
                Prefs.setBool(kIsOnBoardingViewSeen, true);
                Navigator.of(context).pushReplacementNamed(LoginView.routeName);
              },
              text: 'ابدأ الآن',
            ),
          ),
        ),
        const SizedBox(height: 43),
      ],
    );
  }
}
