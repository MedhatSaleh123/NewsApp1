import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widgets/category_card.dart';

class categoriesListView extends StatelessWidget {
  const categoriesListView({
    super.key,
  });
final List<CategoryModel> categories =const [
  CategoryModel(image: 'https://th.bing.com/th?id=OIP.f1eE_Qgn9M9zCqnuZBo9-gHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.8&pid=3.1&rm=2', categoryName: 'Business'),
   CategoryModel(image: 'https://th.bing.com/th?id=OIP.f1eE_Qgn9M9zCqnuZBo9-gHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.8&pid=3.1&rm=2', categoryName: 'Sports'),
   CategoryModel(image: 'https://th.bing.com/th?id=OIP.f1eE_Qgn9M9zCqnuZBo9-gHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.8&pid=3.1&rm=2', categoryName: 'Entertainment'),
   CategoryModel(image: 'https://th.bing.com/th?id=OIP.f1eE_Qgn9M9zCqnuZBo9-gHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.8&pid=3.1&rm=2', categoryName: 'Health'),
   CategoryModel(image: 'https://th.bing.com/th?id=OIP.f1eE_Qgn9M9zCqnuZBo9-gHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.8&pid=3.1&rm=2', categoryName: 'Science'),
   CategoryModel(image: 'https://th.bing.com/th?id=OIP.f1eE_Qgn9M9zCqnuZBo9-gHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.8&pid=3.1&rm=2', categoryName: 'General'),
   CategoryModel(image: 'https://th.bing.com/th?id=OIP.f1eE_Qgn9M9zCqnuZBo9-gHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.8&pid=3.1&rm=2', categoryName: 'Technology'),
  
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return CategoryCard(
          category: categories[index],
        );
      },),
    );
  }
}
