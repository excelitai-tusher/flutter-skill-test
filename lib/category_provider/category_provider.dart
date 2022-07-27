// import 'package:flutter/cupertino.dart';
// import 'package:flutter_coding_test/category_provider/model_category.dart';
// import 'http_category.dart';
// import 'model_category.dart';
//
// class CategoryProvider extends ChangeNotifier{
//   List<ProductPage>?categoryList=[];
//   bool isLoading =false;
//   getCategoryProvider()async{
//     isLoading =true;
//     final data =await ApiDataService().getCategoriesService();
//     categoryList = data.image.toString() as List<ProductPage>?;
//     //categoryList=data.ProductPage!;
//     print(categoryList!.length);
//     isLoading =false;
//     notifyListeners();
//
//   }
// }




import 'package:flutter/cupertino.dart';

import 'http_category.dart';

class ProductProvider extends ChangeNotifier{
  List <Map<String,dynamic>> data_list=[];
  bool isloading=false;
  getdata()async{
    var  data= await ApiService().getdata();
    data_list=data;
    notifyListeners();
  }
}