import 'package:flutter/material.dart';
import 'package:test_test/services/utils.dart';
import 'package:test_test/widgets/bike_gird.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        //title: Text('Agarly', style: SubHeading),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Available Bikes',
              style: MainHeading,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            bikeGrid(),
          )
        ],
      ),
    );
  }
}
