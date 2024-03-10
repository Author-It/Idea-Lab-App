import 'package:date_field/date_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idealab/utils/functions.dart';
import 'package:intl/intl.dart';

class PostEvents extends StatefulWidget {
  const PostEvents({super.key});

  @override
  State<PostEvents> createState() => _PostEventsState();
}

class _PostEventsState extends State<PostEvents> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  bool? _validate() {
    return (_form.currentState?.validate());
  }

  final titleController = TextEditingController();
  final descController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  DateTime selectedTime = DateTime.now();
  final seatsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: const Color(0xffC4C4C4),
                        ),
                        child: const Center(
                          child: Icon(CupertinoIcons.arrow_left),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text.rich(
                        TextSpan(
                          text: 'C',
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              fontSize: 30,
                              shadows: [
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(0, -5),
                                )
                              ],
                              color: Colors.transparent,
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff252738),
                              decorationThickness: 1.5,
                            ),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'reate an event',
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                  fontSize: 30,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      offset: Offset(0, -5),
                                    )
                                  ],
                                  color: Colors.transparent,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: _form,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 12.0, right: 12.0),
                          child: Text(
                            "Event Title",
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                fontSize: 30,
                                color: Color(0xff252738),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, left: 12, right: 12),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          textSelectionTheme: const TextSelectionThemeData(
                            cursorColor: Colors.red,
                          ),
                        ),
                        child: TextFormField(
                          controller: titleController,
                          validator: MultiValidator([
                            RequiredValidator(
                              errorText: 'Please enter Event Title.',
                            ),
                          ]).call,
                          decoration: InputDecoration(
                            hintText: 'Event Title',
                            labelText: 'Event Title',
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
                              FontAwesomeIcons.t,
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
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 12.0, right: 12.0),
                          child: Text(
                            "Event Description",
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                fontSize: 30,
                                color: Color(0xff252738),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
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
                          controller: descController,
                          validator: MultiValidator([
                            RequiredValidator(
                              errorText: 'Please enter the description',
                            ),
                          ]).call,
                          decoration: InputDecoration(
                            hintText: 'Description',
                            labelText: 'Description',
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
                              FontAwesomeIcons.solidFileLines,
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
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 12.0, right: 12.0),
                          child: Text(
                            "Event Date",
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                fontSize: 30,
                                color: Color(0xff252738),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
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
                        child: DateTimeFormField(
                          decoration: InputDecoration(
                            hintText: 'Event Date',
                            labelText: 'Event Date',
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
                              FontAwesomeIcons.calendarDays,
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
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                          mode: DateTimeFieldPickerMode.date,
                          initialValue: DateTime.now(),
                          onChanged: (DateTime? value) {
                            print(value);
                            selectedDate = value!;
                          },
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 12.0, right: 12.0),
                          child: Text(
                            "Event Start Time",
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                fontSize: 30,
                                color: Color(0xff252738),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
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
                        child: DateTimeFormField(
                          decoration: InputDecoration(
                            hintText: 'Event Time',
                            labelText: 'Event Time',
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
                              FontAwesomeIcons.clock,
                            ),
                            suffixIcon: const Icon(
                              Icons.access_time_filled,
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
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                          mode: DateTimeFieldPickerMode.time,
                          initialValue: DateTime.now(),
                          onChanged: (DateTime? value) {
                            selectedTime = value!;
                          },
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 12.0, right: 12.0),
                          child: Text(
                            "Event Seats",
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                fontSize: 30,
                                color: Color(0xff252738),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
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
                          keyboardType: TextInputType.number,
                          controller: seatsController,
                          decoration: InputDecoration(
                            hintText: 'Event Seats',
                            labelText: 'Event Seats',
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
                              Icons.chair,
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
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 12,
                          right: 12,
                          top: 15,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            if (_validate() == false) {
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
                                          "Incomplete Form",
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
                            } else {
                              // Post the event
                              print("object");
                              postAPI(
                                titleController.text,
                                descController.text,
                                DateFormat.yMMMd().format(selectedDate),
                                DateFormat.jm().format(selectedTime),
                                int.parse(seatsController.text),
                                context,
                              );
                              // print(titleController.text);
                              // print(descController.text);
                              // print(DateFormat.yMMMd().format(selectedDate));
                              // print(DateFormat.jm().format(selectedTime));
                              // print(seatsController.text);
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff252738),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                'Post Event',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
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
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
