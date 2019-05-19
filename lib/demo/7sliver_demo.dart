import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Flutter呀flutter'),
            // 是否固定标题
            // pinned:true,
            // 是否浮动标题
            floating: true,
            // 设置伸展的空间 自动缩放的标题
            expandedHeight: 178.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'hello Flutter'.toUpperCase(),
                style:TextStyle(
                  fontSize:15.0,
                  letterSpacing:3.0,
                  fontWeight:FontWeight.w400,
                )
              ),
              background:Image.network('http://pic32.nipic.com/20130823/13339320_183302468194_2.jpg',
              fit:BoxFit.cover)
            ),
          ),
          // 让内容在安全区显示 而不是遮挡顶部图标 比如iphonex
          SliverSafeArea(
            // 在SliverGrid中添加padding需要使用SliverPadding这个小部件
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              // sliver:SliverGridDemo(),
              sliver: SliverListDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      // 构建视图的每一项
      delegate: SliverChildBuilderDelegate(
          // 提供一个builder方法
          (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 32.0),
          // 设置每一项的效果
          child: Material(
            // TOTO 这个圆角在这里不生效是为什么？？？
              borderRadius: BorderRadius.circular(12.0),
              // 设置阴影
              elevation: 14.0,
              // 阴影颜色
              shadowColor: Colors.grey.withOpacity(0.6),
              // 可以设置尺寸比例
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 30.0,
                    left: 30.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].title,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        Text(
                          posts[index].author,
                          style: TextStyle(fontSize: 13.0, color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              )),
        );
      },
          // 视图项目的数量
          childCount: posts.length),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          // 控制网格视图项目显示的比例

          childAspectRatio: 1.0 / 1.0),
      // 构建网格视图的每一项
      delegate: SliverChildBuilderDelegate(
          // 提供一个builder方法
          (BuildContext context, int index) {
        return Container(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        );
      },
          // 网格视图项目的数量
          childCount: posts.length),
    );
  }
}
