import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _girdItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.contain,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _girdItemBuilder,
      //控制视图的显示方式
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:150.0, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0)
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  // 方法返回widget类型的list
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text('item $index',
            style: TextStyle(fontSize: 18.0, color: Colors.green)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // 创建网格视图
    return GridView.extent(
      //最大宽度
      maxCrossAxisExtent: 70.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      //滚动方向 水平还是垂直
      scrollDirection: Axis.vertical,
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  // 方法返回widget类型的list
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text('item $index',
            style: TextStyle(fontSize: 18.0, color: Colors.green)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // 创建网格视图
    return GridView.count(
      // 每行的个数
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      //滚动方向 水平还是垂直
      scrollDirection: Axis.vertical,
      children: _buildTiles(100),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // 每行的个数
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: <Widget>[
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text('item',
              style: TextStyle(fontSize: 18.0, color: Colors.green)),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text('item',
              style: TextStyle(fontSize: 18.0, color: Colors.green)),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text('item',
              style: TextStyle(fontSize: 18.0, color: Colors.green)),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text('item',
              style: TextStyle(fontSize: 18.0, color: Colors.green)),
        )
      ],
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(posts[index].title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.red)),
              Text(posts[index].author,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.yellow))
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // 轮播
    // return PageViewDemo();
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // 是否自动弹回
      pageSnapping: true,
      reverse: false,
      //滚动方向
      scrollDirection: Axis.vertical,
      // 轮播切换的回调方法
      onPageChanged: (currentPage) => debugPrint('page:$currentPage'),
      controller: PageController(
          // 默认显示轮播第几页
          initialPage: 1,
          // 是否记住滚到了哪页
          keepPage: true,
          // 视口占比
          viewportFraction: 0.85),
      children: <Widget>[
        Container(
            color: Colors.brown[900],
            alignment: Alignment(0.0, 0.0),
            child: Text('ONE',
                style: TextStyle(fontSize: 40.0, color: Colors.white))),
        Container(
            color: Colors.green[900],
            alignment: Alignment(0.0, 0.0),
            child: Text('TWO',
                style: TextStyle(fontSize: 40.0, color: Colors.white))),
        Container(
            color: Colors.yellow[900],
            alignment: Alignment(0.0, 0.0),
            child: Text('THREE',
                style: TextStyle(fontSize: 40.0, color: Colors.white)))
      ],
    );
  }
}
