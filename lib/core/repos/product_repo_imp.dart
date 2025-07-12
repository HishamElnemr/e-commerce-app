import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/entites/product_entity.dart';
import 'package:e_commerce_app/core/errors/failures.dart';
import 'package:e_commerce_app/core/models/product_model.dart';
import 'package:e_commerce_app/core/repos/product_repo.dart';
import 'package:e_commerce_app/core/services/database_services.dart';
import 'package:e_commerce_app/core/utils/backend_endpoints.dart';

class ProductRepoImp implements ProductRepo {
  final DatabaseService databaseService;
  ProductRepoImp({required this.databaseService});
  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellerProducts() async {
    try {
      var data =
          await databaseService.getData(
                path: BackendEndpoints.getProducts,
                queryParameters: {
                  'limit': '10',
                  'orderBy': 'sellingCount',
                  'descending': 'true',
                },
              )
              as List<Map<String, dynamic>>;
      List<ProductModel> products = [];
      for (var product in data) {
        products.add(ProductModel.fromJson(product));
      }
      List<ProductEntity> productEntities =
          products.map((e) => e.toEntity()).toList();
      return Right(productEntities);
    } on Exception {
      return Left(ServerFailure('Failed to fetch products'));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      var data =
          await databaseService.getData(path: BackendEndpoints.getProducts)
              as List<Map<String, dynamic>>;
      List<ProductModel> products = [];
      for (var product in data) {
        products.add(ProductModel.fromJson(product));
      }
      List<ProductEntity> productEntities =
          products.map((e) => e.toEntity()).toList();
      return Right(productEntities);
    } on Exception {
      return Left(ServerFailure('Failed to fetch products'));
    }
  }
}
