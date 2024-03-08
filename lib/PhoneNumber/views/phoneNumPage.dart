import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneNumPage extends StatefulWidget {
  const PhoneNumPage({super.key});

  @override
  State<PhoneNumPage> createState() => _PhoneNumPageState();
}

class _PhoneNumPageState extends State<PhoneNumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 250,
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100),
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
        ],
      ),
    );
  }
}
