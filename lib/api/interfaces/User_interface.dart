
import 'package:dio/dio.dart';

import '../constants/Urls.dart';
class User_interface{
  Future<Response> createUser(String name,String email,String password,String mobile,String gender) async{
    final Dio dio = Dio();
    Response response;

    var userdata = {
      "name":name,
      "email" : email,
      "password" : password,
      "mobile" : mobile,
      "gender" : gender,
    };
    final formData = FormData.fromMap(userdata);
    response = await dio.post(Urls().getApiUrl("create_users"), data: formData);
    print(response.data.toString());
    return response;
  }
}