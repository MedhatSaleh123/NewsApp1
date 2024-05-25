import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,required this.category,

  });
final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
  return CategoryView(
    category: category.categoryName,
  );          
          },),
        );
      },
      child: Container(
        margin: EdgeInsets.all(5),
        height:85 ,
        width: 170,
        child: Text(category.categoryName,
      
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,fontWeight: FontWeight.bold),
        ),
        alignment: Alignment.center,
        decoration:BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image:
          NetworkImage(
            category.image,
            ),
      
           ),
          borderRadius:BorderRadius.circular(12),
           ),
      ),
    );
  }
}
