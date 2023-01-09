import 'package:flutter/material.dart';
import 'package:shopping_app_v1/main_categories.dart';

class ProductDetailPage extends StatelessWidget {

  final String itemTitle;
  final String imageUrls;
  final String tryPrice;


  const ProductDetailPage({Key? key,
    required this.itemTitle,
    required this.imageUrls,
    required this.tryPrice}
    ) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar( ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(imageUrls),
            Container(
              width: double.infinity,
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(itemTitle, style: TextStyle(fontSize: 16, color: Colors.black87, fontWeight: FontWeight.normal),),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(tryPrice, style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),),
                      Text("Available in stock", style: TextStyle(fontSize: 12, color: Colors.black87, fontWeight: FontWeight.normal),),
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
