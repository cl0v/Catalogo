// import 'package:nutri/src/models/product_model.dart';

// class OrderBloc {
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
