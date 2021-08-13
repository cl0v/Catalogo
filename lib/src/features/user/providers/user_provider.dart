import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/features/cart/src/controller.dart';
import 'package:nutri/src/features/user/features/order/export.dart';
import 'package:nutri/src/features/user/features/product/export.dart';
import 'package:nutri/src/features/user/repositories/user_repository.dart';

class UserProvider extends InheritedWidget {
  UserProvider({
    required Widget child,
    required this.uid,
    required this.userRepository,
    required this.cartController,
    this.orderRepository,
    this.productRepository,
  }) : super(child: child);

  //A vantagem dessas coisas no provider é que posso injetar o dado fake em toda a arvore

  final IUserRepository userRepository;
  //TODO: Avaliar a necessidade desse carinha
  final IOrderRepository? orderRepository;

  final CartController cartController;

  final IProductRepository? productRepository;

  final String uid;


  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static UserProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserProvider>()!;
  }
}
