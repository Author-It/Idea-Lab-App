import 'package:firebase_auth/firebase_auth.dart';
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
  GlobalKey<FormState> _form = GlobalKey<FormState>();

  void _validate() {
    _form.currentState?.validate();
  }

  void wrongID() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: const Color(0xff252738),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "INVALID CREDENTIALS",
                style: GoogleFonts.crimsonPro(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  bool showPass = false;

  final idController = TextEditingController();
  final passwordController = TextEditingController();

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
                  height: 280,
                  width: 280,
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
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    key: _form,
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
                              controller: idController,
                              validator: MultiValidator([
                                RequiredValidator(
                                  errorText: 'Please enter your ID',
                                ),
                                PatternValidator(
                                  r'^[0-9]+$',
                                  errorText: "Can only have numbers.",
                                )
                              ]).call,
                              decoration: InputDecoration(
                                hintText: 'Student ID',
                                labelText: 'Student ID',
                                labelStyle: GoogleFonts.crimsonPro(
                                  textStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff676A6C),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                hintStyle: GoogleFonts.crimsonPro(
                                  textStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff676A6C),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                prefixIcon: const Icon(
                                  FontAwesomeIcons.graduationCap,
                                ),
                                errorStyle: const TextStyle(fontSize: 18.0),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(9.0),
                                  ),
                                ),
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
                              controller: passwordController,
                              validator: MultiValidator([
                                RequiredValidator(
                                  errorText: 'Please enter Password',
                                ),
                              ]).call,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                labelText: 'Password',
                                labelStyle: GoogleFonts.crimsonPro(
                                  textStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff676A6C),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                hintStyle: GoogleFonts.crimsonPro(
                                  textStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff676A6C),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
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
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(9.0),
                                  ),
                                ),
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
                              onPressed: () async {
                                _validate();

                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  },
                                );

                                try {
                                  await FirebaseAuth.instance
                                      .signInWithEmailAndPassword(
                                    email: "${idController.text}@timtom.com",
                                    password: passwordController.text,
                                  );
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                } on FirebaseAuthException catch (e) {
                                  Navigator.pop(context);
                                  if (e.code == 'invalid-credential') {
                                    wrongID();
                                  }
                                }
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
