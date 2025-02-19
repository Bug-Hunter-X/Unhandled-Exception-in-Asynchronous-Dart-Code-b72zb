```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      // Example of using the data
      print('Data received: $jsonData');
    } else {
      // More informative error handling
      throw Exception('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } on SocketException catch (e) {
    //Handle specific socket exceptions
    print('Network error: $e');
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('JSON decoding error: $e');
  } catch (e) {
    // Handle other exceptions
    print('An unexpected error occurred: $e');
    // Optionally re-throw the error to be handled at a higher level
    // rethrow;
  }
}
```