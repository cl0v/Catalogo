// import 'package:nutri/src/features/store/features/product/interfaces/product_bloc_interface.dart';
// import 'package:nutri/src/models/product_model.dart';
// //TODO: Remover pois esse bloc é do orders
// class ProductBloc implements IProductBloc {
//   final Map<ProductModel, int> _productMap = <ProductModel, int>{};

//   int get total {
//     int v = 0;
//     _productMap.values.forEach((e) => v += e);
//     return v;
//   }

//   @override
//   addItem(ProductModel product) {
//     // TODO: implement removeItem
//     _productMap[product] = _productMap[product] ?? 0 + 1;
//   }

//   @override
//   removeItem(ProductModel product) {
//     if (_productMap[product] != null) {
//       if (_productMap[product] == 0)
//         return;
//       else
//         _productMap[product] = _productMap[product]! - 1;
//     }
//   }
// }
