import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            articleModel.image??'https://th.bing.com/th?id=OIP.f1eE_Qgn9M9zCqnuZBo9-gHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.8&pid=3.1&rm=2'),

      
        ),
        SizedBox(height: 12,),
        Text(articleModel.title,
        
        style: TextStyle(color: Colors.black,
        fontSize: 20,fontWeight: FontWeight.bold),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 8,),
        Text(articleModel.subTitle??' ',maxLines: 2,
        style: TextStyle(color: Colors.blueGrey,fontSize: 14),
        )
      ],
    );
  }
}