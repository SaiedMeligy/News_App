import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/core/config/constant.dart';
import 'package:news_app/models/source_model.dart';

import '../../../models/sourceModelData.dart';
class ApiManager{
  static Future<List<Sources>> getDataSource(String categoryId)async {
    //Uri url=Uri.parse("https://${Constants.baseUrl}/v2/top-headlines/sources?apiKey=${Constants.apiKey}");
    Uri url = Uri.https(
      Constants.baseUrl,
      Constants.endpoint,
      {
        'apiKey': Constants.apiKey,
        "category": categoryId
      },
    );
    final response = await http.get(url);
    //print(response.body);
    List<Sources> sourceDataList=[];
    if(response.statusCode==200) {
      var data = jsonDecode(response.body);
        var sourceList = data["sources"];
        for(var element in sourceList) {
          sourceDataList.add(Sources.fromJson(element));
        }
        return sourceDataList;
      }
      else {
        throw Exception("failed");
      }
      }
}