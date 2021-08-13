import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/features/order/bloc/order_bloc.dart';
import 'package:nutri/src/features/user/features/order/repositories/order_repository.dart';
import 'package:nutri/src/features/user/models/user_model.dart';
import 'package:nutri/src/features/user/providers/user_provider.dart';
import 'package:nutri/src/features/user/repositories/user_repository.dart';

class OrderCreatorButtonWidget extends StatefulWidget {
  @override
  _OrderCreatorButtonWidgetState createState() =>
      _OrderCreatorButtonWidgetState();
}

class _OrderCreatorButtonWidgetState extends State<OrderCreatorButtonWidget> {
  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
  }

//TODO: Ta rolando um bug nesse botao
  onPressed(context) async {
    final UserProvider provider = UserProvider.of(context);
    UserModel user = await  provider.userRepository.reader.id(provider.uid);

    final IOrderRepository repository = provider.orderRepository!;
    IOrderBloc bloc = provider.orderBloc;

    final orderId = await repository.creator.create(user.id!, bloc.order);

    repository.launcher.launchOrder(user.phone, orderId);
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      icon: Icon(Icons.send),
      label: Text('Finalizar pedido'),
      onPressed: () => onPressed(context),
    );
  }
}
