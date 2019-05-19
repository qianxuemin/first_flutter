import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlatButton(
            child: Text('Home'),
            onPressed: null,
          ),
          FlatButton(
            child: Text('About'),
            // 点击之后路由跳转新页面
            onPressed: () {
              // 使用定义好的名字进行路由跳转
              Navigator.pushNamed(context, '/about');
              // Navigator.of(context).push(MaterialPageRoute(
              //   // 构建页面显示的内容
              //     builder: (BuildContext context) => Page(title: '我是About')));
            },
          )
        ]),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String title;

// 构造函数
  Page({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      // 自定义路由返回按钮
      floatingActionButton:FloatingActionButton(
        child:Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      )
    );
  }
}
