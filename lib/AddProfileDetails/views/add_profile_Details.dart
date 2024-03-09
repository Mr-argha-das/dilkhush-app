import 'package:dating_app/Gender/views/Gender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddProfileDetails extends StatefulWidget {
  const AddProfileDetails({Key? key}) : super(key: key);

  @override
  State<AddProfileDetails> createState() => _AddProfileDetailsState();
}

class _AddProfileDetailsState extends State<AddProfileDetails> {
  final _fromKey = GlobalKey<FormState>();
  DateTime dateTime = DateTime.now();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _dobController = TextEditingController();
  final _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              // ignore: avoid_unnecessary_containers
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        "Add Profile Details",
                        style: GoogleFonts.lato(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              // ignore: avoid_unnecessary_containers
              Padding(
                padding: const EdgeInsets.only(left: 10),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        "Please add  your profile details here",
                        style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 199, 199, 199)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: const Color.fromARGB(255, 199, 199, 199)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.edit_outlined,
                        size: 35,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 2, color: Colors.red)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        border: InputBorder.none, // Removes the underline
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 2, color: Colors.red)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email Address',
                        border: InputBorder.none, // Removes the underline
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 2, color: Colors.red)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextFormField(
                      controller: _mobileController,
                      decoration: const InputDecoration(
                        labelText: 'Mobile Number',
                        border: InputBorder.none, // Removes the underline
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 2, color: Colors.red)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextFormField(
                      initialValue:
                          "${dateTime.day}-${dateTime.month}-${dateTime.year}",
                      controller: _dobController,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                            onTap: () async {
                              dateTime = (await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2030)))!;
                              setState(() {});
                            },
                            child: Icon(Icons.calendar_month_outlined)),
                        labelText: 'Date of Bith',
                        border: InputBorder.none, // Removes the underline
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 2, color: Colors.red)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextFormField(
                      controller: _cityController,
                      decoration: const InputDecoration(
                        labelText: 'City',
                        border: InputBorder.none, // Removes the underline
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => Genderpage()));
          },
          child: Container(
            height: 60,
            width: 420,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 238, 99, 90),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "Verify",
                style: GoogleFonts.lato(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
