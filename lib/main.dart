import 'package:flutter/material.dart';
import './CustomInputField.dart';


void main(){
  runApp(MaterialApp(
  title: 'Login App',
  home: HomeScreen()
  ));
}

//void main() => runApp(MyApp());

class HomeScreen extends StatelessWidget{

   @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.blue,
          child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomRight,
                  widthFactor: 0.5,
                  heightFactor: 0.5,
                  child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                  color: Color.fromRGBO(255, 255, 255, 0.4),
                  child: Container(
                    width: 400, height: 400,
                  ),
                ),),
                 Center(
              child: Container(
                width: 400,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                   child: Image.asset('images/LOGO.jpg',width: 80, height:80),),
                        CustomInputField(
                          Icon(Icons.person, color: Colors.white), 'Username'),

                               CustomInputField(
                          Icon(Icons.lock, color: Colors.white), 'Password'),
                 Container(
                   width: 150,
                   child: RaisedButton(onPressed: () {},color: Colors.deepOrange,textColor: Colors.white,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                   child: Text('Login', style: TextStyle(
                     fontSize: 20.0
                   ),),
                   ),
                 )

                  ],

                  ),
              ),
            ),
              ],
          ),
        ),
    );
  }
}
