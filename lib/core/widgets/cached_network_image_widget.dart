import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  const CachedNetworkImageWidget({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      placeholder:
          (context, url) => const Center(child: CircularProgressIndicator()),
      errorWidget:
          (context, url, error) =>
              Image.asset(Assets.assetsImagesPlaceholder, fit: BoxFit.cover),
    );
  }
}
