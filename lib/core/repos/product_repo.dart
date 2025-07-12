import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/entites/add_product_entity_input.dart';
import 'package:e_commerce_app/core/errors/failures.dart';

abstract class ProductRepo {
  Future<Either<Failure, ProductEntity>> getProducts();
  Future<Either<Failure, ProductEntity>> getBestSellerProducts();
}
