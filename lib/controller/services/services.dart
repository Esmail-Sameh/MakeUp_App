import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:http/http.dart' as http;
import '../../model/product.dart';

class RemoteServices{

  static var client = http.Client();

  static Future<RxList<ProductModel>?> fetchData()async{
    var respons = await client.get(Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
     if(respons.statusCode == 200){
       var jsonString = respons.body;
       return productModelFromJson(jsonString);
     }else{
       return null;
     }
  }

}