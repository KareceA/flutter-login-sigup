import 'dart:convert';

import 'package:http/http.dart' as http;

void signUp(
    {String? email,
    String? password,
    String? firstName,
    String? lastName}) async {
  try {
    http.Response response = await http.post(
        Uri.parse(
            'https://thawing-reef-30756.herokuapp.com/api/student_info/sign_up.php'),
        body: jsonEncode({
          'first_name': firstName,
          'last_name': lastName,
          'email': email,
          'password': password
        }));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      print(data);
      print('SignUp successfully');
    } else {
      print('failed');
    }
  } catch (e) {
    print(e.toString());
  }
}
