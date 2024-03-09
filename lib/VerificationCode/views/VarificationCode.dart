import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VarificationCode extends StatefulWidget {
  const VarificationCode({Key? key}) : super(key: key);

  @override
  State<VarificationCode> createState() => _VarificationCodeState();
}

class _VarificationCodeState extends State<VarificationCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 170,
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0.6, left: 30),
              child: Text(
                "Enter Verification Code",
                style: GoogleFonts.lato(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 33),
              child: Text(
                "We have sent code to your number",
                style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 33),
              child: Text(
                "9874696685",
                style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width:
                              80, // Adjust this size according to your preference
                          height:
                              80, // Adjust this size according to your preference
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 225, 144, 139)),
                              color: Colors.red,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black26,
                                    spreadRadius: 1,
                                    blurRadius: 12,
                                    offset: Offset(4, 4))
                              ]),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25),
                                decoration: const InputDecoration(
                                  hintText: '',
                                  border: InputBorder.none,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 20,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Row(
                children: [
                  Text(
                    "Resend it",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    " 00:12s",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
                onPressed: () {},
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    "Verify",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                )),
          ],
        ),
      ),
    );
  }
}
