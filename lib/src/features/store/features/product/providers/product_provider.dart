// import 'package:flutter/material.dart';
// import 'package:nutri/src/features/store/features/product/bloc/product_bloc.dart';
// import 'package:nutri/src/features/store/features/product/interfaces/product_bloc_interface.dart';
// import 'package:nutri/src/features/store/features/product/repositories/product_repository.dart';

// class ProductProvider extends InheritedWidget {
//   ProductProvider({
//     required Widget child,
//     required this.repository,
//     required this.bloc,
//   }) : super(child: child);
  
//   final IProductRepository repository;
//   final IProductBloc bloc;

//   @override
//   bool updateShouldNotify(covariant InheritedWidget oldWidget) {
//     throw UnimplementedError();
//   }

//   static ProductProvider of(BuildContext context) =>
//       context.dependOnInheritedWidgetOfExactType<ProductProvider>()!;
// }
