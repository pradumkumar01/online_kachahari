class Urls{
  final String API_BASE_URL = "https://online-kch.seeksolution.in/api";

  final Map<String,String> ENDPOINTS = {
    "get_user":"/get/users/",
    "create_users" : "/create/users",
    "user_login" :"/auth/user/login",
    "about_page" : "../pages/about",
    "contact_page" : "../pages/contact",
  };

  String getApiUrl(String keyname){
    return "${API_BASE_URL}/${ENDPOINTS[keyname]}";
  }
}