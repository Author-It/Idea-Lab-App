import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

String quote = '';
String author = '';

Future<void> getRandQuote() async {
  try {
    // Set a timeout duration (in milliseconds)
    const timeoutDuration = Duration(seconds: 20000);

    // Create a new HTTP client
    var client = http.Client();

    // Send the HTTP request with a timeout
    var response = await client
        .get(
          Uri.parse('https://zenquotes.io/api/random'),
        )
        .timeout(timeoutDuration);

    // Close the client
    client.close();

    // Convert the data to JSON
    var data = json.decode(response.body);

    // Get the quote and author
    if (data[0]["a"] == "zenquotes.io" || data[0].isEmpty) {
      quote = "The only true wisdom is in knowing you know nothing.";
      author = "Socrates";
    } else {
      quote = data[0]["q"];
      author = data[0]["a"];
    }
  } catch (e) {
    quote = "The only true wisdom is in knowing you know nothing.";
    author = "Socrates";
  }
}

Future<dynamic> fetchAPI(String ep) async {
  try {
    // Set a timeout duration (in milliseconds)
    const timeoutDuration = Duration(seconds: 5);

    // Create a new HTTP client
    var client = http.Client();

    // Send the HTTP request with a timeout
    var response = await client
        .get(
          Uri.parse('https://idealabapi.herokuapp.com/$ep'),
        )
        .timeout(timeoutDuration);

    // Close the client
    client.close();

    // Convert the data to JSON
    var data = json.decode(response.body);

    return data;
  } catch (e) {
    // Handle timeout or other errors
    if (e is TimeoutException) {
      return {'error': 'Timeout occurred'};
    } else {
      return {'error': '$e'};
    }
  }
}

Future<dynamic> postAPI(
  String title,
  String desc,
  String date,
  String time,
  int seats,
  BuildContext context,
) async {
  try {
    // Set a timeout duration (in milliseconds)
    const timeoutDuration = Duration(seconds: 2);

    // Create a new HTTP client
    var client = http.Client();

    // Send the HTTP request with a timeout
    await client.post(
      Uri.parse('http://localhost:3000/api/events/addEvent'),
      body: json.encode(
        {
          'title': title,
          'desc': desc,
          'date': date,
          'time': time,
          'seats': seats,
        },
      ),
      headers: {'Content-Type': 'application/json'},
    ).timeout(timeoutDuration, onTimeout: () {
      throw TimeoutException('The connection has timed out, Please try again');
    });

    // Close the client
    client.close();
  } catch (e) {
    // Handle timeout or other errors
    if (e is TimeoutException) {
      print(e);
      if (context.mounted) {
        // Use addPostFrameCallback to ensure that the dialog is shown after the current frame
        WidgetsBinding.instance.addPostFrameCallback((_) {
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
                      "API Timeout",
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
        });
      }
      return {'error': 'Timeout occurred'};
    } else {
      return {'error': '$e'};
    }
  }
}
