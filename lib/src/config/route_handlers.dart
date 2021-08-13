import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/features/order/export.dart';
import 'package:nutri/src/features/user/features/product/export.dart';
import 'package:nutri/src/pages/admin/admin_dashboard_page.dart';
import 'package:nutri/src/pages/home_page.dart';
import 'package:nutri/src/pages/order_page.dart';
import 'package:nutri/src/pages/store_page.dart';

Handler handler(Widget page) =>
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return page; //TODO: Substituir
    });

var rootHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  return HomePage(); //TODO: Substituir
});

var productCreationHandler = handler(CreateProductPage());

var userAndOrderHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  final url = params["id"]?.first as String;
  final prefix = url.substring(0, 2);
  final id = url.substring(2);
  if (prefix == 'Ox') return OrderPage(id);
  if (prefix == 'Sx') return StorePage(id);
  return HomePage();
});

var adminHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  return AdminDashboardPage();
});




// var ordersHandler =
//     Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
//   return OrderViewerPage(params["id"]?.first);
// });
