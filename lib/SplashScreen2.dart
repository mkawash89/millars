import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Screen3.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen2(),
    );
  }
}

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset('sp2.png',alignment: Alignment.center,),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Expanded(
                    child: Text(
                  'Find Food You Love',
                  style: TextStyle(fontSize: 18),
                )),
                Container( height: 80,
                  width: 250,
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
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
                    onPressed: () {Navigator.push(
                        context, MaterialPageRoute(builder: (_) => SplashScreen3())); },
                    child: Text('Next',style: TextStyle(fontSize: 9),),
                  )

                ),

              ],
            )),
      ),
    );
  }
}
