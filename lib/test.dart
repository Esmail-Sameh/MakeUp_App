import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up_app/controller/controller.dart';
import 'package:make_up_app/model/product.dart';

class TestScreen extends StatelessWidget {
  static String routName = '/test';
  final ProductController _controller = Get.put(ProductController());
  late final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 10,),
            Text('Loding...'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){

          }
      ),
    );
  }
}
