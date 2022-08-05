import 'package:injectable/injectable.dart';

import '../../../../core/injection/service_locator.dart';
import '../../../../core/network/network_module.dart';
import '../../../../core/network/network_url.dart';
import '../../domain/entities/product.dart';
import '../models/product_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<Product>> getProducts();
}

@LazySingleton(as: ProductRemoteDataSource)
class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final networkModule = getIt<NetworkModule>();

  @override
  Future<List<Product>> getProducts() async {
    var result = await networkModule.getMethod(
      NetworkURL.products,
    );

    return ProductModel.fromJsonList(result['products']);
  }
}

class RiverpodProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  RiverpodProductRemoteDataSourceImpl(this.networkModule);

  final NetworkModule networkModule;

  @override
  Future<List<Product>> getProducts() async {
    var result = await networkModule.getMethod(
      NetworkURL.products,
    );

    return ProductModel.fromJsonList(result['products']);
  }
}
