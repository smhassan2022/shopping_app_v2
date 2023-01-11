import 'package:flutter/material.dart';
import 'Model/model_list.dart';
import 'inner/product_details.dart';

class MainCategories extends StatefulWidget {
  const MainCategories({Key? key}) : super(key: key);

  @override
  State<MainCategories> createState() => _MainCategoriesState();
}
  List<MainModelData> cartProductDataList=[];

  class _MainCategoriesState extends State<MainCategories> {

  MainModelData mainModelData1 = MainModelData(proTitle: "Perfume Secret Desire", proImage: 'assets/images/products/pro-img02.png', proPrice: 5600, proDescription: "Dummy perfumes for testing purpose only.", proDiscount: 25, proRating: 3.5);
  MainModelData mainModelData2 = MainModelData(proTitle: "Perfume Desire Secret", proImage: 'assets/images/products/pro-img03.png', proPrice: 2200, proDescription: "Dummy text for testing purpose only.", proDiscount: 15, proRating: 4.5);

  List<MainModelData> productDataList=[];
  @override
  void initState() {
    productDataList.add(mainModelData1);
    productDataList.add(mainModelData2);

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: productDataList.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 6.0,
            mainAxisSpacing: 6.0 ),
        itemBuilder: (context, index) => shoppingCard(index),
      ),
    );
  }

  shoppingCard(i) {
    MainModelData p=productDataList[i];
    return Container(

      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
        boxShadow: [
          BoxShadow(color: Colors.grey.shade50, spreadRadius: 3),
        ],
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailPage(p),
                ),
              );
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: (){},
                  child: Text("${p.productDiscount!}", style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),),),
                Icon(Icons.add_shopping_cart_outlined),
              ],
            ),
            Image.asset("${p.productImage!}", height: 80,),
            Text("${p.productTitle}",style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),),
            Text("${p.productPrice}",style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}


