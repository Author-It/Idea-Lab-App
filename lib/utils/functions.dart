Future<String> getRandQuote() async {
  // Get the data from the API
  var response = await http.get('https://zenquotes.io/api/random');

  // Convert the data to JSON
  var data = jsonDecode(response.body);

  // Get the quote and author
  String quote = data['content'];
  String author = data['author'];

  // Return the quote and author
  return '$quote - $author';
}
