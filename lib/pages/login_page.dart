import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Center(
                child: Image(
                  image: AssetImage("assets/images/login_cover.png"),
                  height: 320,
                  width: 320,
                ),
              ),
              Text(
                "Welcome!",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff252738),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  "To get started, please enter your Student ID & Password provided by your college.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.crimsonPro(
                    textStyle: const TextStyle(
                      fontSize: 17,
                      color: Color(0xff6F91F5),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Form(
                    // key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              textSelectionTheme: const TextSelectionThemeData(
                                cursorColor: Colors.red,
                              ),
                            ),
                            child: TextFormField(
                              validator: MultiValidator([
                                RequiredValidator(
                                  errorText: 'Please enter your ID',
                                ),
                              ]).call,
                              decoration: const InputDecoration(
                                hintText: 'Student ID',
                                labelText: 'Student ID',
                                prefixIcon: Icon(
                                  FontAwesomeIcons.graduationCap,
                                ),
                                errorStyle: TextStyle(fontSize: 18.0),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(9.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(9.0),
                                  ),
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 12,
                            right: 12,
                            top: 7,
                          ),
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              textSelectionTheme: const TextSelectionThemeData(
                                cursorColor: Colors.black,
                              ),
                            ),
                            child: TextFormField(
                              obscureText: !showPass,
                              validator: MultiValidator([
                                RequiredValidator(
                                  errorText: 'Please enter Password',
                                ),
                              ]).call,
                              decoration: InputDecoration(
                                hintText: 'Student ID',
                                labelText: 'Password',
                                prefixIcon: const Icon(
                                  FontAwesomeIcons.lock,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      showPass = !showPass;
                                    });
                                  },
                                  icon: showPass
                                      ? const Icon(Icons.visibility)
                                      : const Icon(Icons.visibility_off),
                                ),
                                errorStyle: const TextStyle(fontSize: 18.0),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(9.0),
                                  ),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(9.0),
                                  ),
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 12,
                              right: 12,
                              top: 30,
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                // Validate returns true if the form is valid, or false otherwise.
                                // if (_formkey.currentState.validate()) {
                                //   // If the form is valid, display a snackbar. In the real world,
                                //   // you'd often call a server or save the information in a database.
                                //   ScaffoldMessenger.of(context).showSnackBar(
                                //     const SnackBar(
                                //       content: Text('Processing Data'),
                                //     ),
                                //   );
                                // }
                              },
                              style: ElevatedButton.styleFrom(
                                alignment: Alignment.center,
                                backgroundColor: const Color(0xff252738),
                                fixedSize: const Size(380, 52),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
