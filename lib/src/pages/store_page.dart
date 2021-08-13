
import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/features/order/bloc/order_bloc.dart';
import 'package:nutri/src/features/user/features/order/repositories/order_repository.dart';
import 'package:nutri/src/features/user/features/order/widgets/order_creator_button_widget.dart';
import 'package:nutri/src/features/user/features/product/repositories/product_repository.dart';
import 'package:nutri/src/features/user/features/product/widgets/product_list_widget.dart';
import 'package:nutri/src/features/user/providers/user_provider.dart';
import 'package:nutri/src/features/user/repositories/user_repository.dart';

class StorePage extends StatelessWidget {
  const StorePage(
    this.id, {
    Key? key,
  }) : super(key: key);

  final String id;
  @override
  Widget build(BuildContext context) {
    return UserProvider(
      uid: id,
      userRepository: FakeUserRepository(),
      orderRepository: FakeOrderRepository(),
      productRepository: FakeProductRepository(),
      orderBloc: OrderBloc(),
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 52,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        body: ProductListWidget(),
        floatingActionButton: OrderCreatorButtonWidget(),
      ),
    );
  }
}
