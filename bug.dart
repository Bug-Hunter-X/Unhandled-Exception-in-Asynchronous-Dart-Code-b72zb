```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error (e.g., throw an exception)
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions (network issues, JSON decoding errors, etc.)
    print('Error fetching data: $e');
    // Consider re-throwing the exception or handling it based on your needs
  }
}
```