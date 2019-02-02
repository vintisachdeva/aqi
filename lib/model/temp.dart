import 'dart:convert';

import 'package:http/http.dart' as http;

class RenderData {

  var url = "https://auth.aqi.in/oauth2/token";

  void fetchData() async
  {
    http.post(url,
        body: {"username": "Indoor Android API",
          "password": "20dcd1bedf9444d6b0f099f06fd4d901",
          "grant_type": "password",
          "client_id": "36df5fba0b0049a4861b34e6bc90db07"})
        .then((response) {

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");

      //Map<String, dynamic> data = jsonDecode(response.toString());
      //var token = data['access_token'];
      var citiesUrl = "https://api.aqi.in/WegAPI/api/protected/getBigCities";
      http.get(citiesUrl, headers: {"Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer ${response.body}"}).then((response) {
        print("City response data : " + response.toString());
        print("city data : " + response.body);
        print("status : " + response.body);
      });

      var locationUrl = "https://api.aqi.in/WegAPI/api/protected/getalllocations";
      http.get(locationUrl, headers: {"Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer "}).then((response) {
        print("location response data : " + response.toString());
        print("location data : " + response.body);
        print("location status : " + response.body);
      });
    });
  }
}