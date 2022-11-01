import 'package:flutter/material.dart';
import 'login.dart';
import 'login_1.dart';

void main() {
  runApp( const MyApp());
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
                const Padding(padding: EdgeInsets.all(8)),
                const Expanded(
                    child: Text(
                      'Fast Delivery',
                      style: TextStyle(fontSize: 18),
                    )),
                Container( height: 80,
                  width: 250,
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    'Fast food Delivery to your home,office wherever you are',
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Login()));
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
