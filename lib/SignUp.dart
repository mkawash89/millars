import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:millers/login_1.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

    SafeArea(
          child: Stack(
            children: [
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                color: Colors.white,

                // const TopSginup(),
                // Positioned(
                //   top: MediaQuery.of(context).size.height * 0.10,
                //   child: Container(
                //     height: MediaQuery.of(context).size.height * 0.9,
                //     width: MediaQuery.of(context).size.width,
                //     decoration: const BoxDecoration(
                //         color: Colors.white,
                //         borderRadius: BorderRadius.only(
                //             topLeft: Radius.circular(45),
                //             topRight: Radius.circular(45))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.8,
                      margin: EdgeInsets.only(
                          left: MediaQuery
                              .of(context)
                              .size
                              .width * 0.09),
                      child: Image.asset("milers.png"),
                    ),
                    const SizedBox(
                       height: 50,
                    ),
                    const Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    InputField(
                      hintTexti: "Name",
                      headerText: '',
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    InputField(headerText: "", hintTexti: "Email"),
                    const SizedBox(
                      height: 15,
                    ),
                    InputField(
                      headerText: "",
                      hintTexti: "Mobile No",
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InputField(
                      headerText: "",
                      hintTexti: "Adress",
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InputField(
                      headerText: "",
                      hintTexti: "Password",
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InputField(
                      headerText: "",
                      hintTexti: "Confirm Password",
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.red, borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const SignUp()));
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery
                              .of(context)
                              .size
                              .width * 0.18,
                          top: MediaQuery
                              .of(context)
                              .size
                              .height * 0.05),
                      child: Text.rich(
                        TextSpan(
                            text: "I already Have an account ",
                            style: TextStyle(
                                color: Colors.black12.withOpacity(0.8),
                                fontSize: 16),
                            children: [
                              TextSpan(
                                  text: "Sign In",
                                  style: const TextStyle(
                                      color: Colors.pink, fontSize: 16),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const Login1()
                                          )
                                      );
                                    }
                                    ),
                            ]
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class InputField extends StatelessWidget {
  String headerText;
  String hintTexti;

  InputField({Key? key, required this.headerText, required this.hintTexti})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 10,
          ),
          child: Text(
            headerText,
            style: const TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: hintTexti,
                  border: InputBorder.none,
                ),
              ),
            )
          //IntrinsicHeight

        ),
      ],
    );
  }
}

class InputFieldPassword extends StatefulWidget {
  String headerText;
  String hintTexti;

  InputFieldPassword(
      {Key? key, required this.headerText, required this.hintTexti})
      : super(key: key);

  @override
  State<InputFieldPassword> createState() => _InputFieldPasswordState();
}

class _InputFieldPasswordState extends State<InputFieldPassword> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(height: 50,
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 5,
          ),
          child: Text(
            widget.headerText,
            style: const TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),

      ],
    );
  }
}


