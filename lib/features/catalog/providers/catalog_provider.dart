import 'package:flutter/material.dart';
import 'package:nutri/features/catalog/interfaces/catalog_interface.dart';

class CatalogProvider extends InheritedWidget {
  CatalogProvider({
    required Widget child,
    required this.catalog,
  }) : super(child: child);
  
  final ICatalog catalog;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    throw UnimplementedError();
  }

  static CatalogProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<CatalogProvider>()!;
}
