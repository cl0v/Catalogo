import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/features/cart/src/controller.dart';
import 'package:nutri/src/features/user/features/order/bloc/order_bloc.dart';
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
    // required this.orderBloc,
  }) : super(child: child);

  final IUserRepository userRepository;
  //TODO: Avaliar a necessidade desse carinha
  final IOrderRepository? orderRepository;

  final CartController cartController;

  final IProductRepository? productRepository;

  final String uid;

  /// Caso haja qualquer ordem na tela, será necessario informar o bloc de order
  // final IOrderBloc orderBloc;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static UserProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserProvider>()!;
  }
}
