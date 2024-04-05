import 'package:demoapp/components/description.dart';
import 'package:demoapp/components/drawer.dart';
import 'package:demoapp/components/food_tile.dart';
import 'package:demoapp/components/myloc.dart';
import 'package:demoapp/components/silverbar.dart';
import 'package:demoapp/components/tab_bar.dart';
import 'package:demoapp/models/food.dart';
import 'package:demoapp/models/resturant.dart';
import 'package:demoapp/pages/foodpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //
  late TabController _tabController;

  @override
  void initState() {
    _tabController =
        TabController(length: FoodCaterory.values.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMuenuByCategory(
      FoodCaterory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.caterory == category).toList();
  }

  //return List of foods in given category

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCaterory.values.map((category) {
      //get category menu
      List<Food> categoryMenu = _filterMuenuByCategory(category, fullMenu);

      return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            //get individual food
            final food = categoryMenu[index];
            //return food tile
            return Foodtile(
                food: food,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FoodPage(food: food)));
                });
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Mydrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                Mysilverbar(
                  title: MytabBar(tabController: _tabController),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      )

                      //current loc
                      ,
                      mylocation(),

                      //description box
                      const Mydescription()
                    ],
                  ),
                ),
              ],
          body: Consumer<Resturant>(
            builder: (context, resturant, child) => TabBarView(
              controller: _tabController,
              children: getFoodInThisCategory(resturant.menu),
            ),
          )),
    );
  }
}
