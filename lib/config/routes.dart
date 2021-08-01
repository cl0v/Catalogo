import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:nutri/config/route_handlers.dart';

class Routes {
  static String root = "/";
  static String order = "/order/:id"; //TODO: O id é o que permite 

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });
    router.define(root, handler: rootHandler);
    router.define(order, handler: ordersHandler);
  }
}
