import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/entites/add_product_entity_input.dart';
import 'package:e_commerce_app/core/errors/failures.dart';
import 'package:e_commerce_app/core/models/product_model.dart';
import 'package:e_commerce_app/core/repos/product_repo.dart';
import 'package:e_commerce_app/core/services/database_services.dart';
import 'package:e_commerce_app/core/utils/backend_endpoints.dart';

class ProductRepoImp implements ProductRepo {
  final DatabaseService databaseService;
  ProductRepoImp({required this.databaseService});
  @override
  Future<Either<Failure, ProductEntity>> getBestSellerProducts() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ProductEntity>> getProducts() async {
    var data =
        await databaseService.getData(path: BackendEndpoints.getProducts)
            as List<Map<String, dynamic>>;
    List<ProductModel> products = [];
    for (var product in data) {
      products.add(ProductModel.fromJson(product));
    }
    List<ProductEntity> productEntities =
        products.map((e) => e.toEntity()).toList();
    return Right(productEntities as ProductEntity);

    

  }
}
