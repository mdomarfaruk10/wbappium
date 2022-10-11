import 'package:flutter/material.dart';
import 'package:wbappium/helper.dart';
import 'package:http/http.dart' as http;
import 'package:wbappium/model/category_model.dart';

class LoadDataProvider extends ChangeNotifier {
  bool isLoading = false;
  List<Categories> category = [];


  Future getAllCategory() async {
    isLoading = true;
    String url = Helper.url+Helper.category;
    var response = await http.get(Uri.parse(url));
    if(response.statusCode==200){
      var jsondata = response.body;
      category = categoriesFromJson(jsondata);
      isLoading = false;
      notifyListeners();
      print("category: "+category.length.toString());
      return category;
    }
  }
}