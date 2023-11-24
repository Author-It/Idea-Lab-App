import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List> getRandQuote() async {
  // Get the data from the API
  var response = await http.get(Uri.parse('https://zenquotes.io/api/random'));

  // Convert the data to JSON
  var data = json.decode(response.body);

  // Get the quote and author
  String quote = data[0]["c"];
  String author = data[0]["a"];

  // Return the quote and author
  return [quote, author];
}
