import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:nutri/src/features/service/src/pages/add_new_service.dart';
import 'package:nutri/src/features/user/features/order/order.dart';
import 'package:nutri/src/features/user/features/product/product.dart';
import 'package:nutri/src/features/user/user.dart';
import 'package:nutri/src/pages/root_page.dart';

Handler handler(Widget page) =>
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      //TODO: Remove this
      return UserProductListPage('sx1');
      return page;
    });

class RouteHandler {
  static get rootHandler => handler(RootPage()); //TODO: Substituir
  static get addServiceHandler => handler(AddNewServicePage());
  static get productCreationHandler =>
      handler(CreateProductPage()); //TODO: Substituir

}

get addServiceHandler => handler(AddNewServicePage());

var userAndOrderHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  final url = (params["id"]?.first as String).toLowerCase();
  final prefix = url.substring(0, 2);
  final id = url.substring(2);
  if (prefix == 'ox') return OrderPage(id);
  if (prefix == 'sx') return UserProductListPage(id);
  return RootPage();
});


// var ordersHandler =
//     Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
//   return OrderViewerPage(params["id"]?.first);
// });
