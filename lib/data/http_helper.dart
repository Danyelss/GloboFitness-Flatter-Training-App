import 'package:http/http.dart' as http;

class HttpHelper {
  //https://api.openweathermap.org/data/2.5/
  //weather?q=London&appid=62979c3f2636f466361842c9f6acad7d
  final String authority = 'api.openweathermap.org';
  final String path = 'data/2.5/weather';
  final String apiKey = '62979c3f2636f466361842c9f6acad7d';

  Future<String> getWeather(String location) async {
    Map<String, dynamic> parameters = {'q': location, 'appId': apiKey};
    Uri uri = Uri.https(authority, path, parameters);
    http.Response result = await http.get(uri);
    return result.body;
  }
}
