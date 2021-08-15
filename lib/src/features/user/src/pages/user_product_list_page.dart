import 'package:flutter/material.dart';
import '../../features/cart/src/controller.dart';
import '../../features/product/product.dart';
import '../../features/order/order.dart';
import '../providers.dart';
import '../repositories.dart';

class UserProductListPage extends StatelessWidget {
  const UserProductListPage(
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
        floatingActionButton: OrderCreatorButtonWidget(),
      ),
    );
  }
}
