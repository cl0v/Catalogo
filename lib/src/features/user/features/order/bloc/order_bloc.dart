
// import '../export.dart';

// abstract class IOrderBloc {
//   OrderReaderModel get order;
//   // List<OrderModel> get orders;
//   // double get totalValue;

//   addItem(ProductModel productTitle);
//   removeItem(ProductModel productTitle);
// }

// class OrderBloc implements IOrderBloc {
//   List<OrderModel> _orderList = <OrderModel>[];
//   double _totalValue = 0;

//   @override
//   addItem(ProductModel product) {
//     // TODO: implement removeItem
//     // if (_orderList.containsKey(product.title)) {
//     //   _orderList[product.title] = _orderList[product.title]! + 1;
//     // } else {
//     //   _orderList[product.title] = 1;
//     // }
//     _orderList.add(OrderModel(title: product.title, amount: 1));
//     //TODO: Fazer a conferencia

//     _totalValue += product.price;
//   }

//   @override
//   removeItem(ProductModel product) {
//     //TODO: Implementar onRemove
//     _orderList.add(OrderModel(title: product.title, amount: -1));
//     _totalValue -= product.price;

//     // if (_orderList.containsKey(product.title)) {
//     //   if (_orderList[product.title] == 1)
//     //     _orderList.remove(product.title);
//     //   else {
//     //     _orderList[product.title] = _orderList[product.title]! - 1;
//     //     _totalValue -= product.price;
//     //   }
//     // } else {
//     //   return;
//     // }
//   }


  

//   List<OrderModel> get orders {
//     List<String> sl = [];
//     List<OrderModel> ol = [];
//     _orderList.map((o) {
//       if (sl.contains(o.title)) {
//         final i = sl.indexWhere((element) => element == o.title);
//         ol[i].amount += 1;
//       } else {
//         sl.add(o.title);
//         ol.add(o);
//       }
//     }).toList();
//     return ol;
//   }

//   @override
//   // TODO: implement order
//   OrderReaderModel get order {
//     return 
//         OrderReaderModel(value: _totalValue, orders: orders);

//   }
// }
