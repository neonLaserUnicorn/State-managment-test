import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart_model.dart';

class AddButtonWidget extends StatelessWidget {
  const AddButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //считываем данные без подписки
    // var cart = Provider.of<CartModel>(context, listen: false);
    var cart = context.read<CartModel>();
    return IconButton(
      icon: Icon(Icons.add, size: 62),
      onPressed: () {
        cart.addItems();
      },
    );
  }
}
