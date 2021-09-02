import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_test/widgets/auth_form.dart';
enum AuthType { login, register }
class Authscreen extends StatelessWidget {
  final AuthType authType;

  const Authscreen({Key? key,required this.authType}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children:<Widget>[
                Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                ),
              ),

                  Center(
                    child: Column(
                      children:<Widget>[
                        SizedBox(height: 60.0),
                        Text(
                          'HELLO!',
                          style: TextStyle(
                            fontSize: 34,
                            color: Colors.orange,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.2,
                          ),
                        ),
                        Image.asset(
                          'assets/images/bikespace.jpg',
                          height: 220,
                        ),
                      ]
                    ),
                  )
                ]
              ),


              Authform(authtype:authType),
            ],
          ),
        ),
    );
  }
}
