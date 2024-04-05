import 'package:demoapp/models/food.dart';
import 'package:flutter/material.dart';

class MytabBar extends StatelessWidget {
  final TabController tabController;
  const MytabBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs() {
    return FoodCaterory.values.map((Category) {
      return Tab(
        text: Category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(controller: tabController, tabs: _buildCategoryTabs()),
    );
  }
}
