import 'package:flutter_test/flutter_test.dart';
import 'package:nutri/src/features/user/features/order/bloc/order_bloc.dart';

import '../../../../../mocks/order_mocks.dart';
import '../../../../../mocks/product_mocks.dart';

main() {
  test('Testing order after adding some shit', () {
    IOrderBloc bloc = OrderBloc();
    bloc.addItem(product1);
    bloc.addItem(product1);
    bloc.addItem(product2);
    bloc.addItem(product3);
    expect(bloc.orders, equals([
      order1,
      order2,
      order3,
    ]));
  });
}
