import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/fonts.dart';
import '../../theme/icons.dart';


  class Product {
  final String name;
  final String image;
  final String price;
  final String quantity;
  final VoidCallback voidCallback;
  Product( this.image, this.price, this.name, this.quantity, this.voidCallback, );
}
class FeaturedProducts extends StatefulWidget {
  final List<Product> products;
   FeaturedProducts({super.key, required this.products});

  @override
  State<FeaturedProducts> createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {
  int counter=1;
  void _incrementCounter(){
    setState(() {
      counter++;
    });
  }
  void _decrementCounter(){
    setState(() {
      counter--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: GridView.builder(
        padding: const EdgeInsets.only(right: 15,left: 15),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              mainAxisSpacing:20 ,
              crossAxisSpacing: 20,
          childAspectRatio: 0.67
            ),
                itemCount:widget.products.length,
                itemBuilder: (context, index)
            {
              bool isHeart=index==2||index==5;
              bool showQuantity = index ==1||index==4;
              return  Container(
                color: AppColors.whiteBg,
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(right: 8,top: 8),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Image.asset(isHeart?AppIcons.heartFilledIcon:AppIcons.heartIcon,),
                      ),
                    ),
                    Image.asset(widget.products[index].image,width: 80,height: 80,),
                    const SizedBox(height: 5,),
                    Text(widget.products[index].price,style: AppFonts.medium.copyWith(fontSize: 12,color: AppColors.prDarkGreen),),
                    const SizedBox(height: 5,),
                    Text(widget.products[index].name,style: AppFonts.semiBold.copyWith(fontSize: 15,color: AppColors.blackTxt),),
                    const SizedBox(height: 5,),
                    Text(widget.products[index].quantity,style: AppFonts.semiBold.copyWith(color: AppColors.darkGreyBg),),
                    const SizedBox(height: 5,),
                    const Divider(
                      thickness: 1.5,
                      color: AppColors.lightGreyBor,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment:showQuantity ?MainAxisAlignment.spaceEvenly:MainAxisAlignment.center,
                        children: showQuantity?[
                          IconButton(onPressed: (){
                            if(counter>1) _decrementCounter();
                          }, icon: Icon(Icons.remove,color: AppColors.prLightGreen,)),
                          Text(counter.toString(),style: AppFonts.medium.copyWith(fontSize: 12,color: AppColors.blackTxt),),
                          IconButton(onPressed: (){
                            _incrementCounter();
                          }, icon: Icon(Icons.add,color: AppColors.prLightGreen,),)
                        ] :[
                          Image.asset(AppIcons.bagIcon,height: 20,width: 20,color: AppColors.prLightGreen,),
                          const SizedBox(width: 5,),
                          Text("Add to cart",style: AppFonts.medium.copyWith(fontSize: 12,color: AppColors.blackTxt),)
                        ],),
                    ),
                  ],
                ),
              );
            }
            ),
    );


  }
}
