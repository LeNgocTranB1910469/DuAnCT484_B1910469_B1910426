import 'package:flutter/cupertino.dart';
import 'package:order_app/models/cart_item.dart';
import 'package:order_app/models/order_item.dart';
import 'package:order_app/screens/orders/order_manager.dart';
import 'package:order_app/screens/Screens.dart';

class OrdersManager with ChangeNotifier {
  final List<OrderItem> _orders = [
    OrderItem(
      id: '01',
      amount: 370.00,
      products: [
        CartItem(
          id: 'c1',
          title: 'Áo thun black basic',
          price: 185.000,
          quantity: 2,
        )
      ],
      dateTime: DateTime.now(),
    )
  ];
  void addOrder(List<CartItem> cartProducts, double total) async {
    _orders.insert(
      000,
      OrderItem(
        id: 'o${DateTime.now().toIso8601String()}',
        amount: total,
        products: cartProducts,
        dateTime: DateTime.now(),
      ),
    );
    notifyListeners();
  }

  int get orderCount {
    return _orders.length;
  }

  List<OrderItem> get orders {
    return [..._orders];
  }
}
