import 'dart:async';
import 'dart:convert';
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
    // Handle timeout or other errors
    print('Error occurred: $e');
    // You can set default values here if needed
    quote = "The only true wisdom is in knowing you know nothing.";
    author = "Socrates";
  }
}

Future<dynamic> fetchAPI(String ep) async {
  try {
    // Set a timeout duration (in milliseconds)
    const timeoutDuration = Duration(seconds: 20);

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
      print('Error occurred: $e');
      return {'error': '$e'};
    }
  }
}
