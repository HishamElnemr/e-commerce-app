import 'package:e_commerce_app/core/products_cubit.dart/products_cubit.dart';
import 'package:e_commerce_app/core/repos/product_repo.dart';
import 'package:e_commerce_app/core/services/getit_services.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(productRepo: getIt<ProductRepo>()),
      child: const HomeViewBody(),
    );
  }
}
