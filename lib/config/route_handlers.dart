import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:nutri/pages/order_viewer_page.dart';
import 'package:nutri/pages/products_page.dart';

var rootHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  return ProdutsPage();
});

var ordersHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  print(params["id"]?.first);
  return OrderViewerPage(params["id"]?.first);
});
