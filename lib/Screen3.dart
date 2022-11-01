import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'login.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen3(),
    );
  }
}

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({Key? key}) : super(key: key);

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset('delivery.png',alignment: Alignment.center,),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Expanded(
                    child: Text(
                      'Fast Delivery',
                      style: TextStyle(fontSize: 18),
                    )),
                Container( height: 80,
                  width: 250,
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Fast food Delivery to your home,office wherever you are',
                    style: TextStyle(fontSize: 8),
                  ),
                ),
                Container(
                    width: 100,
                    padding:EdgeInsets.all(5) ,

                    color: Colors.red,
                    child:TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(5),
                        primary: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => Login()));
                      },
                      child: Text('Next',style: TextStyle(fontSize: 9),),
                    )

                ),

              ],
            )),
      ),
    );
  }
}
