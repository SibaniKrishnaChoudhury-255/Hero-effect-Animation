import 'package:flutter/material.dart';
import 'package:login_page/home_page.dart';

class LoginPage extends StatefulWidget {

  static String tag = 'login-page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('images/twitter.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      initialValue: 'shivam.kibhu@gmail.com',
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email@',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );


    final passaword = TextFormField(
      initialValue: '12345678',
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password***',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );



    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 10.0,
          height: 42.0,
          onPressed: (){
            Navigator.of(context).pushNamed(HomePge.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Log In', style: TextStyle(color: Colors.white),),
        ),
      ),
    );


    final forgotLabel = FlatButton(
      child: Text('Forgot Password??', style: TextStyle(color: Colors.black54),),
      onPressed: (){},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24, right: 24),
          children: <Widget>[
            logo,

            SizedBox(height: 48.0,),

            email,

            SizedBox(height: 48.0,),

            passaword,

            SizedBox(height: 48.0,),

            loginButton,

            forgotLabel,

          ],
        ),
      ),
    );
  }
}
