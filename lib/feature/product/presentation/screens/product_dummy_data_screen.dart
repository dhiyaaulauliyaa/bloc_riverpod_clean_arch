import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/base/base_usecase.dart';
import '../../../../core/injection/service_locator.dart';
import '../../../../core/services/app_services.dart';
import '../../domain/entities/product.dart';
import '../../domain/usecases/get_products.dart';
import '../widgets/product_list.dart';

class ProductDummyDataScreen extends HookWidget with AppMessengerService {
  ProductDummyDataScreen({Key? key}) : super(key: key);

  final getProducts = getIt<GetProducts>();

  @override
  Widget build(BuildContext context) {
    var products = useState<List<Product>>([]);
    useEffect(() {
      getProducts.call(NoParams()).then(
            (value) => value.fold(
              (l) => msg.showSnackBar(message: 'Get product failed'),
              (r) => products.value = r,
            ),
          );
      return;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PRODUCTS',
          style: TextStyle(
            color: Colors.tealAccent,
            fontWeight: FontWeight.w700,
            fontSize: 20,
            letterSpacing: 5,
          ),
        ),
      ),
      body: ProductList(products: products.value),
    );
  }
}
