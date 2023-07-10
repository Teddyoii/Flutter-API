import 'package:http/http.dart' as http;

class NetworkFile {

  Future<dynamic> get (String url) async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw Exception('Login Failed');
      }
    } catch (e) {
      print("Faill Reason "+e.toString());
      return Exception(e);
    }
  }
}