import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurant_app/category_item.dart';
import 'package:restaurant_app/data.dart';
import 'package:restaurant_app/model/catergory.dart';

class CategoryScreen extends StatelessWidget {
  Data data = Data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Categories")),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, childAspectRatio: 3 / 2),
        children:
            data.Categories.map((item) => CategoryItem(item: item)).toList(),
      ),
    );
  }
}
