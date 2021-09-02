import 'package:flutter/material.dart';
import 'package:test_test/screen/auth_screen.dart';
import 'package:test_test/services/auth.dart';
import 'package:test_test/widgets/original_button.dart';
import 'package:flutter/services.dart';

class Authform extends StatefulWidget {
  final AuthType authtype;

  const Authform({Key? key, required this.authtype}) : super(key: key);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<Authform> {
  final _formKey = GlobalKey<FormState>();
  String _email = '', _password = '';
  AuthBase authBase = AuthBase();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 22.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter your Email',
                hintText: ' ex : menaabdelmeguid22@yahoo.com ',
              ),
              onChanged: (value) {
                _email = value;
              },
              validator: (value) =>
                  value!.isEmpty ? 'You must enter a valid email' : null,
            ),
            SizedBox(height: 22.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter your Passeword',
              ),
              obscureText: true,
              onChanged: (value) {
                _password = value;
              },
              validator: (value) => value!.length <= 6
                  ? 'Your password must be larger than 6 characters'
                  : null,
            ),
            SizedBox(
              height: 22.0,
            ),
            originalbutton(
              textColor: Colors.orange,
              bgColor: Colors.black,
              text: widget.authtype == AuthType.login ? 'Login ' : 'Register',
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  if (widget.authtype == AuthType.login) {
                    await authBase.loginWithEmailAndPassword(_email, _password);
                    Navigator.of(context).pushReplacementNamed('home');
                  } else {
                    await authBase.registerWithEmailAndPassword(
                        _email, _password);
                    Navigator.of(context).pushReplacementNamed('home');
                  }
//
                }
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
                onPressed: () async {
                  if (widget.authtype == AuthType.login) {
                    Navigator.of(context).pushReplacementNamed('Register');
                  } else {
                    Navigator.of(context).pushReplacementNamed('Login');
                  }
                },
                child: Text(
                  widget.authtype == AuthType.login
                      ? '  Don\'t have an account  '
                      : '  Yes,I have an account  ',
                  style: TextStyle(color: Colors.black54, fontSize: 24.0),
                )),
          ],
        ),
      ),
    );
  }
}
