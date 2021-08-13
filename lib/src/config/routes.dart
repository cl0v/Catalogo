import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:nutri/src/config/route_handlers.dart';

class Routes {
  static String root = "/";
  static String admin = "/admin";
  static String createProduct = "/admin/products/create";
  static String userAndOrder = "/:id";
  
  //TODO: Apareceu um bug de fluro, quando tento assim
  // static String userStore = "/user?=:id";
  ///user?=gwa3c2L3omaUk78tPeKW

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });


    router.define(root, handler: rootHandler);
    router.define(createProduct, handler: productCreationHandler);
    router.define(admin, handler: adminHandler);
    router.define(userAndOrder, handler: userAndOrderHandler);
  }
}
