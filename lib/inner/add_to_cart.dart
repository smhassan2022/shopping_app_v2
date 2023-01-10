import 'package:flutter/material.dart';

import '../Model/product_img_list.dart';

class AddCart extends StatefulWidget {


  
  const AddCart({Key? key,}) : super(key: key);

  @override
  _AddCartState createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {

 List<String> cartImg=[
    "ABC",
    "fff",];

 List<String> cartTitle=[
   "Muneeb",
   "Hassan",];

 List<ProductImgListModel> productThumbs=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ProductImgListModel productImgListModel1 = ProductImgListModel("Image", "Title here");

    productThumbs.add(productImgListModel1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add to Cart"),
      ),

      body: ListView.builder(
        itemCount: productThumbs.length,
        itemBuilder: (context, index) => Container(
          color: Colors.grey,
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: ListTile(
              title: Text(productThumbs[index].productTitle),
              leading: Image.asset(productThumbs[index].productImg),
            ),
          ),


      ),

    );
  }
}
