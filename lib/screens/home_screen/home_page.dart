import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_app/screens/categories/featured_products.dart';
import 'package:grocery_app/theme/colors.dart';
import 'package:grocery_app/theme/fonts.dart';
import 'package:grocery_app/theme/icons.dart';
import '../categories/categories.dart';
import '../categories/categories_scroll.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<bool> _onWillPop() async {
    // This will close the app on back button press
    SystemNavigator.pop();
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.whiteBg,
            appBar: AppBar(
              backgroundColor: AppColors.whiteBg,
              automaticallyImplyLeading: false,
              title: Container(
                decoration: BoxDecoration(
                    color: AppColors.lightGreyBg,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: TextField(
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color:AppColors.darkGreyBg ),
                      contentPadding: const EdgeInsets.only(top: 12),
                      hintText: "Search keywords..",
                      prefixIcon: Image.asset(AppIcons.searchIcon,),
                      suffixIcon: GestureDetector(
                          onTap: (){
                            showSearch(context: context, delegate:CustomSearchDelegate());
                          },
                          child: Image.asset(AppIcons.sortIcon)),
                      border: InputBorder.none,
                    ),
                  ),

              ),
      
            ),
         body: SingleChildScrollView(
           child: Container(
      
             decoration: const BoxDecoration(
               gradient: LinearGradient(
                 colors: [
                 AppColors.whiteBg,
                 AppColors.whiteSmokeBg,
               ],
                 begin: Alignment.topCenter,
                 end: Alignment.bottomCenter,
               )
             ),
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 8.0),
                   child: Stack(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 15.0,right: 15),
                         child: Image.asset("assets/images/bodyImage.png"),
                       ),
                       Positioned(
                           left: 60,
                           top: 140,
                           child: Text("20% off on your\nfirst purchase",style: AppFonts.semiBold.copyWith(fontSize: 18,color: AppColors.blackTxt),))
      
                     ],
                   ),
                 ),
                 SizedBox(height:MediaQuery.of(context).size.height*0.02),
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const Categories(),));
                   },
                   child: Container(
                     padding: EdgeInsets.only(left: 15,right: 15),
                     child: Row(
                       children: [
                         Text("Categories",style: AppFonts.semiBold.copyWith(fontSize: 18,color: AppColors.blackTxt),),
                         Spacer(),
                         Icon(Icons.arrow_forward_ios,color: AppColors.darkGreyBg,)
                       ],
                     ),
                   ),
                 ),
                 const SizedBox(height: 10,),
                 ///  Horizontal Categories scroll
                 const CategoriesScroll(),
                 const SizedBox(height: 10,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 15),
                       child: Text("Featured products",style: AppFonts.semiBold.copyWith(fontSize: 18,color: AppColors.blackTxt),),
                     ),
                     IconButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const Categories(),));
                     }, icon: const Icon(Icons.arrow_forward_ios,color: AppColors.darkGreyBg,))
                   ],
                 ),
                 FeaturedProducts(products: [
                   Product("assets/images/vegetables/onions.png", "\$10", "Onions", "1kg",() {}),
                   Product("assets/images/fruits/bananas.png", "\$8", "Bananas", "1dozens",() {}),
                   Product("assets/images/vegetables/cucumber.png", "\$5", "Cucumber", "1kg",() {}),
                   Product("assets/images/fruits/peach.png", "\$15", "Peach", "1kg",() {}),
                   Product( "assets/images/vegetables/eggplant.png","\$8" ,"eggPlant", "1kg",() {} ),
                   Product( "assets/images/vegetables/beetroot.png","\$7" ,"Beetroot", "1kg",() {} ),
                   Product( "assets/images/vegetables/brocolli.png","\$9.90" ,"Brocolli", "1.5 kg",() {} ),
                   Product( "assets/images/vegetables/potatoes.png","\$7.05" ,"Potatoes", "2kg",() {} ),
                   Product( "assets/images/vegetables/tomatoes.png","\$2.09" ,"Tomatoes", "1kg",() {} ),
                   Product( "assets/images/vegetables/ginger.png","\$3.00" ,"Ginger", "1kg",() {} ),
                 ],),
               ],
             ),
           ),
         ),
      
      ),
    );
  }
}
class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Apple','Banana','Pear','Watermelons','Oranges','BlueBerries','Strawberries'
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(onPressed: (){
        query = '';
      }, icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(onPressed: (){
      close(context, null);
    }, icon:Image.asset(AppIcons.backArrowIcon));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
  List<String> matchQuery = [];
  for(var fruit in searchTerms){
    if(fruit.toLowerCase().contains(query.toLowerCase())){
      matchQuery.add(fruit);
    }
  }
  return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context,index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<String> matchQuery = [];
    for(var fruit in searchTerms){
      if(fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    };
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context,index){
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
  
}