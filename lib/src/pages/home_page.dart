import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _initialBackground( size )
        ],
      ),
      
    );
  }

  Widget _initialBackground( Size size ) {
    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(231, 100, 84, 0.7),
              Color.fromRGBO(231, 100, 84, 0.5),
            ]
          ),
          borderRadius: BorderRadius.circular( 175.0 )
        ),
      ) 
    );
    return Stack(
      children: <Widget>[
        Container(
          color: Color.fromRGBO( 248, 109, 92, 1.0 )
        ),
        Positioned(
          top: size.width * 0.7,
          child: cajaRosa
        ),

        Positioned(
          bottom: 0,
          child: Container(
            child: Image(
              width: size.width,
              image: AssetImage( 
                'assets/imgs/background.png',
              ),
            )
          ),
        ),

        Positioned(
          bottom: size.width * 0.25,
          width: size.width,
          child: Column( 
            children: <Widget>[
              Container( 
                width: size.width * 0.8,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(232, 92, 75, 1.0),
                  borderRadius: BorderRadius.circular( 20.0 )
                ),
                child: Center(
                  child: Text( 
                    'YhoSu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  )
                ),
              ),
              SizedBox( height: 25 ),

              Container( 
                width: size.width * 0.8,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(9, 53, 75, 1.0),
                  borderRadius: BorderRadius.circular( 20 )
                ),
                child: Center(
                  child: Text( 
                    'Elegant',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  )
                ),
              ),
            ],
          ),
        ),

        


      ],
    );
  }
}