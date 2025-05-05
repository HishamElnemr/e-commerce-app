import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

AppBar customAppBar(context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,

    leading: const Icon(Icons.arrow_back_ios_new),

    centerTitle: true,
    title: Text(title, textAlign: TextAlign.center, style: TextStyles.bold19),
  );
}
