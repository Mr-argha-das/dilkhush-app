import 'package:dating_app/PhoneNumber/views/phoneNumPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 199, 199, 199)),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Text(
            "Singup to Continue",
            style: GoogleFonts.lato(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text("Please log in to continue",
              style: GoogleFonts.lato(
                textStyle:
                    const TextStyle(color: Colors.grey, letterSpacing: .5),
              )),
          const SizedBox(
            height: 22,
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 224, 82, 72),
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 90),
              child: const Text(
                "Continue with Email",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => const PhoneNumPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.red,
                  )),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
              child: const Text(
                "Continue with Phone Number",
                style: TextStyle(color: Color.fromARGB(255, 241, 125, 117)),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Or Singup with",
            style: TextStyle(color: Color.fromARGB(255, 129, 129, 129)),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    height: 40,
                    width: 145,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromARGB(255, 212, 211, 211),
                        )),
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/Google.png'))),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Google",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )),
                ),
                 const SizedBox(
                  width: 20,
                ),
                 GestureDetector(
                  onTap: (){

                  },
                   child: Container(
                    height: 40,
                    width: 145,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromARGB(255, 212, 211, 211),
                        )),
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/Facebook.png'))),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Facebook",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )),
                 )
            ],
          ),
          const SizedBox(
            height: 40,
          ),

          const Text("I accept all the"),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child:  const Text("Terms & Conditions",style: TextStyle(color: Colors.red),),
          ),  
              // ignore: avoid_unnecessary_containers
              Container(
            child:  const Text(" &",style: TextStyle(color: Colors.black),),
          ),
           // ignore: avoid_unnecessary_containers
           Container(
            child:  const Text(" Privacy Policy",style: TextStyle(color: Colors.red),),
          ),
      
        ],
         )
        
          
        ],


        
      ),


    );
  }
}
