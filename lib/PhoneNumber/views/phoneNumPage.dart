import 'package:dating_app/VerificationCode/views/VarificationCode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneNumPage extends StatefulWidget {
  const PhoneNumPage({Key? key}) : super(key: key);

  @override
  State<PhoneNumPage> createState() => _PhoneNumPageState();
}

class _PhoneNumPageState extends State<PhoneNumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 170,
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Text(
              "Enter Phone Number",
              style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Text(
              "Please enter your phone number to continue",
              style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  color: const Color.fromARGB(255, 252, 252, 252),
                  borderRadius: BorderRadius.circular(10)),
              padding:
                  const EdgeInsets.symmetric(vertical: 14, horizontal: 200),
              child: const Text(
                "",
                style: TextStyle(color: Color.fromARGB(255, 7, 7, 7)),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          
        ],
      ),
      bottomSheet: TextButton(
              onPressed: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context) => VarificationCode()));
              },
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  "Continue",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              )),
    );
  }
}
