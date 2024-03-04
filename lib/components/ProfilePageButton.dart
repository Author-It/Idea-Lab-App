import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBtn extends StatelessWidget {
  const ProfileBtn(
      {Key? key,
      required this.icon,
      required this.text,
      required this.nextPage})
      : super(key: key);

  final IconData icon;
  final String text;
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => nextPage));
        },
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xff252738),
          side: const BorderSide(
            color: Colors.black,
            width: 2,
          ),
          fixedSize: const Size(338, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                FaIcon(
                  icon,
                  color: Colors.white,
                  size: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    text,
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const FaIcon(
              FontAwesomeIcons.caretRight,
              color: Colors.white,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
