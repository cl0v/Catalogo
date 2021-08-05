import 'package:flutter/material.dart';
import 'package:nutri/features/catalog/interfaces/catalog_interface.dart';
import 'package:nutri/features/catalog/providers/catalog_provider.dart';

class CatalogInjectionWidget extends StatelessWidget {
  const CatalogInjectionWidget({
    Key? key,
    required this.child,
    required this.catalog,
  }) : super(key: key);

  final Widget child;
  final ICatalog catalog;
  
  @override
  Widget build(BuildContext context) {
    return CatalogProvider(
      child: child,
      catalog: catalog,
    );
  }
}
