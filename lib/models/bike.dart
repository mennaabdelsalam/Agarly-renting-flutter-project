import 'package:flutter/foundation.dart';

class BikeItem {
  final String title;
  final double price;
  final String path;
  final String color;
  //final String gearbox;
  //final String fuel;
  final String brand;

  BikeItem(
      {required this.title,
        required this.price,
        required this.path,
        required this.color,
        //required this.gearbox,
        //required this.fuel,
        required this.brand});
}

BikesList allBikes = BikesList(Bikes: [

  BikeItem(
      title: 'Honda Civic 2018',
      price: 123,
      color: 'Grey',
      //gearbox: '4',
      //fuel: '4L',
      brand: 'Honda',
      path: 'assets/images/bike1.png'),
  BikeItem(
      title: 'Land Rover Evoque 2016',
      price: 223,
      color: 'Grey',
     // gearbox: '6',
      //fuel: '19L',
      brand: 'Land Rover',
      path: 'assets/images/bike2.png'),
  BikeItem(
      title: 'Mercedes Benz SLS 2019',
      price: 203,
      color: 'Red',
      //gearbox: '5',
      //fuel: '6L',
      brand: 'Mercedes',
      path: 'assets/images/bike3.jpg'),
  BikeItem(
      title: 'Audi A6 2018',
      price: 190,
      color: 'Grey',
      //gearbox: '5',
      //fuel: '6L',
      brand: 'Audi',
      path: 'assets/images/bike4.jpg'),
  BikeItem(
      title: 'Jaguar XF 2019',
      price: 200,
      color: 'White',
      //gearbox: '6',
      //fuel: '10L',
      brand: 'Jaguar',
      path: 'assets/images/bike5.png'),
  BikeItem(
      title: 'BMW E-1 2018',
      price: 123,
      color: 'Grey',
      //gearbox: '6',
      //fuel: '6L',
      brand: 'BMW',
      path: 'assets/images/bike6.jpg'),
]);

class BikesList {
  List<BikeItem> Bikes;

  BikesList({required this.Bikes});
}