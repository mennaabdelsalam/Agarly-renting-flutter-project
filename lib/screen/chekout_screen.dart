import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_test/providers//cart.dart';
import 'package:provider/provider.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONGRATULATIONS'),
      ),
      body: Column(
        children:<Widget> [
          Container(
            color: Colors.orange,
            height: 100,
            width: 100,
            //decoration: (Text('we will send you your bike in 15 mins'),),
          )
        ],
      ),
    );
  }
}