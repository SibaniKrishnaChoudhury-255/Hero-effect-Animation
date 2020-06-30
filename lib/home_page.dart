import 'package:flutter/material.dart';

class HomePge extends StatelessWidget {

  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final img = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('images/register.png'),
        ),
      ),
    );


    final welcome = Padding(
      padding: EdgeInsets.only(left: 12, top: 25, right: 12, bottom: 10),
      child: Text('Welcome Shivam-Kibhu',
        style: TextStyle(fontSize: 25.0, color: Colors.white),),
    );


    final msg = Padding(
      padding: EdgeInsets.only(left: 12, top: 25, right: 10, bottom: 10),
      child: Text(
        'This is the place to write welcome and greeting message to login users. It generally helps in creating linkage between user and your application. So trying these practices increase user involvment.',
        style: TextStyle(fontSize: 20.0, color: Colors.white),),
    );

    return Scaffold(
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        padding: EdgeInsets.all(28.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent]
          ),
        ),
        child: Column(
          children: <Widget>[
            img,
            welcome,
            msg,
          ],
        ),
      ),
    );
  }
}
