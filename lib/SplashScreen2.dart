import 'package:flutter/material.dart';

import 'Screen3.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
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
                const Padding(padding: EdgeInsets.all(8)),
                const Expanded(
                    child: Text(
                  'Find Food You Love',
                  style: TextStyle(fontSize: 18),
                )),
                Container( height: 80,
                  width: 250,
                  padding: EdgeInsets.all(16),
                  child: const Text(
                    'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
                    style: TextStyle(fontSize: 8),
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.red, borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      print('Splashscreen2 clicked');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SplashScreen3()));
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
