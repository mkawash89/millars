import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
         home: Splash2(),
    );
  }
}

class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);
  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  late double width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body:Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         (
        //             Container(
        //               child: (
        //                   Image(
        //               image: const AssetImage('sp2.png'),
        //               height: MediaQuery.of(context).size.height,
        //               width: MediaQuery.of(context).size.width,
        //           )
        //
        //           ),
        //             )
        //
        //         ),
        //       ],
        //     )

        body:  Container(
        height: 480,
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
    child: ElevatedButton.icon(
    onPressed: (){
    print("You pressed Icon Elevated Button");
    },
    icon: const Icon(Icons.save),  //icon data for elevated button
    label: Text("Elevated Button with Icon"), //label text
    style: ElevatedButton.styleFrom(
    primary: Colors.blueAccent //elevated btton background color
    ),
    )
        )
        );


  }
}
