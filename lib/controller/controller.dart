import 'package:get/get.dart';
import 'package:make_up_app/controller/services/services.dart';
import 'package:make_up_app/model/product.dart';

class ProductController extends GetxController{
  var isLoading = true.obs;
  var productList = RxList<ProductModel>().obs;


  @override
  void onInit(){
    fetchProduct();
    print('on init');
    super.onInit();
  }

  void fetchProduct()async{

    try {
      isLoading(true);
      var products = await RemoteServices.fetchData();
      if (products != null) {
        productList.value = products;
      }
    } finally{isLoading(false);}
  }


}