import 'package:e_commerce_app/core/widgets/notification_widget.dart';
import 'package:flutter/material.dart';
import '../utils/app_text_styles.dart';

AppBar buildAppBar(BuildContext context, {required String title}) {
  return AppBar(
    leading: const Icon(Icons.arrow_back_ios_new),
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: NotificationWidget(),
      ),
    ],
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: const Text(
      'الأكثر مبيعًا',
      textAlign: TextAlign.center,
      style: TextStyles.bold19,
    ),
  );
}
