import 'dart:convert';

import 'package:http/http.dart' as http;

void login({
  String? email,
  String? password,
}) async {
  try {
    http.Response response = await http.post(
        Uri.parse(
            'https://thawing-reef-30756.herokuapp.com/api/student_info/login.php'),
        body: jsonEncode({'email': email, 'password': password}));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      print(data);
      print('Login successfully');
    } else {
      print('failed');
    }
  } catch (e) {
    print(e.toString());
  }
}
