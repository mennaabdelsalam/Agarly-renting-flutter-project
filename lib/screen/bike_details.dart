import 'package:test_test/models/bike.dart';
import 'package:test_test/services/cart.dart';
import 'package:test_test/services/utils.dart';
import 'package:flutter/material.dart';
import 'package:test_test/widgets/specific_card.dart';
import 'package:test_test/services/cart.dart';
import 'chekout_screen.dart';


class BikeDetail extends StatelessWidget {
  final String title;
  final double price;
  final String color;
  //final String gearbox;
  //final String fuel;
  final String brand;
  final String path;

  BikeDetail(
      {required this.title,
        required this.price,
        required this.color,
        //required this.gearbox,
        //required this.fuel,
        required this.brand,
        required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(Icons.bookmark,
                  size: 30, color: Theme.of(context).accentColor)),
          IconButton(onPressed: null, icon: Icon(Icons.share, size: 30)),
        ],
      ),
      body: Column(
        children: [
          Text(title, style: MainHeading),
          Text(
            brand,
            style: BasicHeading,
          ),
          Hero(tag: title, child: Image.asset(path,height:200.0,)),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                child: SpecificsCard(
                  name: '2 Hours',
                  price: price * 1,
                  name2: 'POUND',
                ),
                onTap: (){

                },
              ),
              GestureDetector(
                child: SpecificsCard(
                  name: '4 Hours',
                  price: price * 6,
                  name2: 'POUND',
                ),
                // onTap: (){
                //   _items.add();

               // },
              ),

              GestureDetector(

                child: SpecificsCard(

                  name: '6 Hours',
                  price: price * 12,
                  name2: 'POUND',

                ),
                onTap: (){},
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            'SPECIFICATIONS',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                name: 'Color',
                name2: color,
                price: 12,
              ),

            ],
          ),
          SizedBox(height: 10),
          RaisedButton(
            onLongPress: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CheckoutPage()));
            },
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Theme.of(context).accentColor,
            onPressed: null,
            child: Text(
              'ADD TO YOUR CART ',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          SizedBox(height: 10),
          RaisedButton(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Theme.of(context).accentColor,
            onPressed: null,
            child: Text(
              'CHEK OUT',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}