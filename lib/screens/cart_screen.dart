import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart-screen';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
        appBar: AppBar(title: Text('text')),
        body: Column(
          children: [
            Card(
              margin: EdgeInsets.all(15),
              child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('total', style: TextStyle(fontSize: 20)),
                      Spacer(),
                      // SizedBox(width: 10),
                      Chip(
                        label: Text(
                          '\$${cart.totalAmount}',
                          style: TextStyle(
                              color: Theme.of(context)
                                  .primaryTextTheme
                                  .titleMedium
                                  .color),
                        ),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'ORDER NOW',
                        ),
                        textColor: Theme.of(context).primaryColor,
                      )
                    ],
                  )),
            ),
          ],
        ));
  }
}
