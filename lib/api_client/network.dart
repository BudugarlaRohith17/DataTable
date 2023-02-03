import 'dart:convert';
import 'package:http/http.dart' as http;
import '../response/response.dart';

class ApiClient{

  Future<Data> fetchUsers() async {
    final response =
    await http.post(Uri.parse('https://9723d50c-d162-4e57-bcdb-4a47c774f735.mock.pstmn.io/api/v2/inquiry/list'));
    if (response.statusCode == 200) {
      return Data.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

}

