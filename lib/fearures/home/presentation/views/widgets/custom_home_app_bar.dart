import 'package:e_commerce_app/app_color.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:e_commerce_app/core/widgets/notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const NotificationWidget(),
      leading: Image.asset(
        Assets.assetsImagesProfileImage,
        width: 50,
        height: 50,
      ),
      title: Text(
        textAlign: TextAlign.right,
        "صباح الخير ..!",
        style: TextStyles.regular16.copyWith(color: AppColors.greyColor),
      ),
      subtitle: Text(
        textAlign: TextAlign.right,
        "هشام أحمد",
        style: TextStyles.bold16.copyWith(color: Colors.black),
      ),
    );
  }
}
