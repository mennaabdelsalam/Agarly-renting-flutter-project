import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_test/widgets/original_button.dart';

class Introscreen extends StatelessWidget {
  const Introscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset('assets/images/bikespace.jpg'),
              Container(
                child: Text(
                  'Agarly',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.orange,
                    fontSize: 40.0,
                  ),
                ),
                alignment: AlignmentDirectional.center,
              ),
              originalbutton(
                text: '      Get started     ',
                onPressed: () {
                  Navigator.of(context).pushNamed('Login');
                },
                bgColor: Colors.white,
                textColor: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
