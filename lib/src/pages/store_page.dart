
import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/features/cart/src/controller.dart';
import 'package:nutri/src/features/user/features/order/bloc/order_bloc.dart';
import 'package:nutri/src/features/user/features/order/export.dart';
import 'package:nutri/src/features/user/features/product/export.dart';
import 'package:nutri/src/features/user/providers/user_provider.dart';
import 'package:nutri/src/features/user/repositories/user_repository.dart';
import 'package:nutri/src/services/whatsapp_launcher.dart';

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
      cartController: CartController(),
      userRepository: FakeUserRepository(),
      orderRepository: FakeOrderRepository(),
      productRepository: FakeProductRepository(),
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 52,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        body: ProductListWidget(),
        floatingActionButton: OrderCreatorButtonWidget(
          launcher: WhatsappMessageLauncherService(),
        ),
      ),
    );
  }
}
