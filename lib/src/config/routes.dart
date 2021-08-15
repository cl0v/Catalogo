import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:nutri/src/config/route_handlers.dart';
import 'package:nutri/src/pages/root_page.dart';

class Routes {
  static String userAndOrder = "/:id";

  //TODO: Apareceu um bug de fluro, quando tento assim
  // static String userStore = "/user?=:id";
  ///user?=gwa3c2L3omaUk78tPeKW
  ///
  //

  // Rotas nomeadas

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });

    router.define(RootPage.routeName, handler: RouteHandler.rootHandler);
    router.define(userAndOrder, handler: userAndOrderHandler);
  }
}
