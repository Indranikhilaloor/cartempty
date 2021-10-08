

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        leading:
            IconButton(
              icon:Icon(
                Icons.arrow_back_ios_outlined,
                color:Colors.white,
              ), onPressed: () {
              print("Its clicked");
            },
            ),

          title: const Text('Cart'),
        ),
        body: CartPage(),
      ),
    );
  }
}
class CartPage extends StatefulWidget {


  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/cart.png'),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Text('Your Cart is Empty',style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              )
              ),
              SizedBox(
                height: 10,
                width: 10
              ),
              TextButton(
                child: Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  child: FittedBox(
                    child: Text(
                      'LETS SHOP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  print('Booooom');
              },
              )
            ],

          )

      ),
    );
  }
}
