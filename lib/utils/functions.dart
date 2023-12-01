import 'dart:convert';
import 'package:http/http.dart' as http;

String quote = '';
String author = '';

Future<void> getRandQuote() async {
  // Get the data from the API
  var response = await http.get(Uri.parse('https://zenquotes.io/api/random'));

  // Convert the data to JSON
  var data = json.decode(response.body);

  // Get the quote and author
  quote = data[0]["q"];
  author = data[0]["a"];
}
