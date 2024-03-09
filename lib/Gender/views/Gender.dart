import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gender_page extends StatefulWidget {
  const Gender_page({Key? key}) : super(key: key);

  @override
  State<Gender_page> createState() => _Gender_pageState();
}

class _Gender_pageState extends State<Gender_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Select Gender",
              style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "I am looking for...",
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 199, 199, 199),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            // ignore: avoid_unnecessary_containers
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 185, 182),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.red)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.male_outlined,
                            color: Colors.red,
                            size: 40,
                          ),
                          Text(
                            "Male",
                            style: GoogleFonts.lato(color: Colors.red),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          Center(
            // ignore: avoid_unnecessary_containers
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.red)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.female_outlined,
                            color: Colors.red,
                            size: 40,
                          ),
                          Text(
                            "Female",
                            style: GoogleFonts.lato(color: Colors.red),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            // ignore: avoid_unnecessary_containers
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.red)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.transgender_outlined,
                            color: Colors.red,
                            size: 40,
                          ),
                          Text(
                            "Other",
                            style: GoogleFonts.lato(color: Colors.red),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),

          const SizedBox(
            height: 40,
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          width: 420,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 238, 99, 90),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "Continue",
              style: GoogleFonts.lato(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
