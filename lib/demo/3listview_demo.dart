import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
        //背景颜色
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Column(children: <Widget>[
              // 图片来源于网络 修改图片显示比例
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(posts[index].imageUrl,fit: BoxFit.cover),
              ),
              // 图片下留点空间
              SizedBox(height: 1.0),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.subhead,
              ),
              SizedBox(height: 2.0),
            ]),
            // Positioned.fill 默认上下左右都是0 占满屏
            Positioned.fill(
              child: Material(
                // 设置背景透明
                color: Colors.transparent,
                child: InkWell(
                  // 溅墨的颜色
                  splashColor: Colors.white.withOpacity(0.3),
                  // 设置高亮颜色
                  highlightColor: Colors.white.withOpacity(0.1),
                  onTap: (){
                    debugPrint('tap');
                  }
                ),
              ),
            ),
          ],
        ),
        // 内容竖着排列
        // child:Column(
        //   children:<Widget>[
        //     // 图片来源于网络
        //     Image.network(posts[index].imageUrl),
        //     // 图片下留点空间
        //     SizedBox(height:1.0),
        //     Text(
        //       posts[index].title,
        //       style: Theme.of(context).textTheme.title,
        //       ),
        //       Text(
        //       posts[index].author,
        //       style: Theme.of(context).textTheme.subhead,
        //       ),
        //        SizedBox(height:2.0),
        //   ]
        // )
        );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length, itemBuilder: _listItemBuilder);
  }
}
