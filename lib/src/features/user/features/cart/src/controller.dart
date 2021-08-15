// //TODO: Todo o bloc de order vai se tornar o controller do cart
// //O cart na verdade pode ser uma wishlist do product
import 'package:nutri/src/features/user/features/order/order.dart';
import 'package:nutri/src/features/user/features/product/src/models.dart';

//O mais correto é caracterizar esse cara como bloc
class CartController {
  List<ProductCounterModel> cartItemList = [];

  addToCart(ProductModel productModel) {
    cartItemList
        .add(ProductCounterModel(productModel.title, productModel.price, 1));
  }

  removeFromCart(ProductModel productModel) {
    cartItemList
        .remove(ProductCounterModel(productModel.title, productModel.price, 1));
  }

//TODO: Refazer esse cara toda hora ta chatao....
  OrderModel get order => OrderModel(data: cartItemList);
}
