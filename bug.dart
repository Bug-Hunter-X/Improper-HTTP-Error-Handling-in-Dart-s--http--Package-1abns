```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!
      final jsonData = json.decode(response.body);
      // Process jsonData
    } else {
      // Error handling
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, e.g., network errors
    print('Error: $e');
    // Consider rethrowing the exception to be handled higher up
    // rethrow;
  }
}
```