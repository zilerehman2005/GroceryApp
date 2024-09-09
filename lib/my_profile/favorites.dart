import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/theme/colors.dart';
import 'package:grocery_app/theme/fonts.dart';
class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteSmokeBg,
        appBar: CustomAppBars(text: "Favorites",onBackPressed: (){
          Navigator.pushReplacementNamed(context, '/homePage');
        },),
        body: ListView(
          padding: EdgeInsets.only(right: 5,left: 5),
          children: [
            SizedBox(height: 20,),
            favoriteItem(  2.22, 4,"Fresh Broccoli", "1.50 lbs","assets/images/freshBroccoli.png",),
           SizedBox(height: 5,),
            favoriteItem( 2.22, 4,"Avacada", "1.50 lbs","assets/images/avacoda.png",),
            SizedBox(height: 5,),
            favoriteItem( 2.22, 4,"Pine Apple", "1.50 lbs","assets/images/pineApple.png",),
          ],
        ),

    );
  }
}
Widget favoriteItem(double price, int count,String name, String quantity, String imagePath,) {

  return Slidable(
   endActionPane: ActionPane(motion: ScrollMotion(),
       extentRatio: 0.25,
       children: [
     SlidableAction(onPressed: (context){},
       backgroundColor: Colors.red,
       foregroundColor: Colors.white,
       icon: Icons.delete_outline,
       label: 'Delete',
     )

   ]),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Container(
        padding:EdgeInsets.only(left: 10,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,

        ),
        child: Row(
          children: [

            Image.asset(imagePath,),

            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$${price.toString()} x ${count}',
                  style: AppFonts.medium.copyWith(fontSize: 12,color: AppColors.prDarkGreen),
                ),
                Text(
                  name,
                  style: AppFonts.semiBold.copyWith(fontSize: 15,color: AppColors.blackTxt),
                ),
                Text(
                  quantity,
                  style: AppFonts.regular.copyWith(fontSize: 12,color: AppColors.darkGreyBg),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.add,color: AppColors.prDarkGreen,),
                  onPressed: () {
                  },
                ),
                Text(count.toString(),style: AppFonts.medium.copyWith(fontSize: 15,color: AppColors.darkGreyBg),),
                IconButton(
                  icon: Icon(Icons.remove,color: AppColors.prDarkGreen,),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
