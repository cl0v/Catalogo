import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:nutri/src/pages/admin/create_worker.dart';
import 'package:nutri/src/pages/admin/root.dart';
import 'package:nutri/src/pages/root_page.dart';

Handler handler(Widget page) =>
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return page;
    });

class RouteHandler {
  static get rootHandler => handler(RootPage()); //TODO: Substituir
}

class AdminRouteHandler {
  static get root => handler(AdminRootPage());
  static get addWorker => handler(CreateWorkerPage());
}


// var userAndOrderHandler =
//     Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
//   final url = (params["id"]?.first as String).toLowerCase();
//   final prefix = url.substring(0, 2);
//   final id = url.substring(2);
//   if (prefix == 'ox') return OrderPage(id);
//   if (prefix == 'sx') return UserProductListPage(id);
//   return RootPage();
// });


// var ordersHandler =
//     Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
//   return OrderViewerPage(params["id"]?.first);
// });
