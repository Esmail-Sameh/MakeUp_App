import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up_app/view/widgets/product_Tile.dart';
import '../../controller/controller.dart';
import '../../model/product.dart';

class HomeScreen extends StatelessWidget {
  static String routName = '/';
  final ProductController _controller = Get.put(ProductController(),permanent: true);
  late final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MackUp'),
        ),
        body: Obx((){
          if(_controller.isLoading.value){
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 10,),
                  Text('Loding...'),
                ],
              ),
            );
          }else{
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                childAspectRatio: 0.60,
              ),
              itemCount: _controller.productList.value.length,
              padding: EdgeInsets.all(20),
              itemBuilder: (context, index) {
                return ProdictTile(
                  name:_controller.productList.value[index].name,
                  imageUrl:_controller.productList.value[index].imageLink,
                  prince: _controller.productList.value[index].price,
                  ratting: _controller.productList.value[index].rating,
                );
              },

            );
          }
        }),
        );
  }
}
