
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
   NewsListView({
    super.key, required this.articles,
  });

 final List<ArticleModel> articles ;

  @override
  Widget build(BuildContext context) {
    return  SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return NewsTile(
          articleModel: articles[index],
        );
      }),
    );
  }
}
