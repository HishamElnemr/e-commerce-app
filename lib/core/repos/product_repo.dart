import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/entites/product_entity.dart';
import 'package:e_commerce_app/core/errors/failures.dart';

abstract class ProductRepo {
  Future<Either<Failure, List<ProductEntity>>> getProducts();
  Future<Either<Failure, List<ProductEntity>>> getBestSellerProducts();
}
