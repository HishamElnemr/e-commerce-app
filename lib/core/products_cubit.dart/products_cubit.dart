import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/core/entites/product_entity.dart';
import 'package:e_commerce_app/core/repos/product_repo.dart';
import 'package:meta/meta.dart';

part 'products_cubit_state.dart';

class ProductsCubit extends Cubit<ProductsCubitState> {
  ProductsCubit( {required this.productRepo}) : super(ProductsCubitInitial());
  final ProductRepo productRepo;
  int productsLength = 0;
  Future<void> getProducts() async {
    emit(ProductsCubitLoading());
    final result = await productRepo.getProducts();
    result.fold(
      (failure) => emit(ProductsCubitFailure(message: failure.message)),
      (products) => emit(ProductsCubitSuccess(products: products)),
    );
  }

  Future<void> getBestSellingProducts() async {
    emit(ProductsCubitLoading());
    final result = await productRepo.getBestSellerProducts();
    result.fold(
      (failure) => emit(ProductsCubitFailure(message: failure.message)),
      (products) {
        productsLength = products.length;
        emit(ProductsCubitSuccess(products: products));
      },
    );
  }
}
