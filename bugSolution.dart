```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    switch (response.statusCode) {
      case 200:
        final jsonData = json.decode(response.body);
        // Process jsonData
        break;
      case 400:
        throw Exception('Bad Request: ${response.body}');
      case 404:
        throw Exception('Not Found');
      case 500:
        throw Exception('Internal Server Error');
      default:
        throw Exception('An unexpected error occurred: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```