import 'package:flutter/cupertino.dart';
import 'package:test_test/services/utils.dart';
import 'package:flutter/material.dart';
import 'package:test_test/models/bike.dart';
import 'package:test_test/screen/bike_details.dart';

class bikeGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(

      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allBikes.Bikes.length,
      itemBuilder: (ctx, i) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => BikeDetail(
                  title: allBikes.Bikes[i].title,
                  brand: allBikes.Bikes[i].brand,
                 // fuel: allBikes.Bikes[i].fuel,
                  price: allBikes.Bikes[i].price,
                  path: allBikes.Bikes[i].path,
                  //gearbox: allBikes.Bikes[i].gearbox,
                  color: allBikes.Bikes[i].color,
                )));
          },
          child: Container(

              margin: EdgeInsets.all(3.0),
              //padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(

                  color:  Colors.black,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26, blurRadius: 5, spreadRadius: 1)
                  ]),
              child: Expanded(
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Hero(
                          tag: allBikes.Bikes[i].title,
                          child: Image.asset(allBikes.Bikes[i].path,
                            )),
                    ),
                    Text(
                      allBikes.Bikes[i].title,
                      style: BasicHeading,
                    ),
                    Text((allBikes.Bikes[i].price).toString(),

                        style: SubHeading),
                    Text('per month',style: SubHeading,)
                  ],
                ),
              )
          ),
        ),
      ),
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:1),
    );
  }
}