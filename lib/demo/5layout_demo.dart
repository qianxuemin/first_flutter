import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // flex 布局
    return Container(
      child: Column(
      // 主轴 x轴
      mainAxisAlignment: MainAxisAlignment.center,
      // 交叉轴 y轴
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
       StackDemo(),
        AspectRatio(
          // 设置子部件宽高比 自动根据最大宽度计算高度
          aspectRatio: 3.0/1.0,
          child: Container(
            color: Colors.red,
          ),
        ), 
        ConstrainedBox(
          // 限制子部件最大最小值
          constraints:BoxConstraints(
            minHeight: 30.0,
            maxWidth: 200.0,
          ),
          child: Container(
            color: Colors.green,
          ),

        )   
      ],
    )
        );
  }
}

class StackDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
         alignment: Alignment.topRight,
         children: <Widget>[
            SizedBox(
            width: 200.0,
            height: 300.0,
            child: Container(
              alignment: Alignment(1.0,1.0),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  borderRadius: BorderRadius.circular(8.0)
              ),
               child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
            )),
            SizedBox(
            height: 30.0
            ),
            SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Colors.green,
                      Colors.red
                    ]
                  )
              ),
              child: Icon(Icons.brightness_2, color: Colors.white, size: 32.0),
            )),
            Positioned(
              child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
              right: 20.0,
              top: 20.0,
            ), 
            Positioned(
              child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
              right: 120.0,
              top: 120.0,
            )
         ],
       );
  }
}
class ContainerRowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // flex 布局
    return Container(
      child: Column(
      // 主轴 x轴
      mainAxisAlignment: MainAxisAlignment.center,
      // 交叉轴 y轴
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
            width: 200.0,
            height: 300.0,
            child: Container(
              alignment: Alignment(-1.0,-1.0),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  borderRadius: BorderRadius.circular(8.0)
              ),
              child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
            )),
            SizedBox(
            height: 30.0
            ),
            SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  borderRadius: BorderRadius.circular(8.0)
              ),
              child: Icon(Icons.brightness_2, color: Colors.white, size: 32.0),
            ))
      ],
      // children: <Widget>[
      //   IconBadge(Icons.chat),
      //   IconBadge(Icons.chat,size: 64.0),
      //   IconBadge(Icons.local_activity),
      // ],
    )
        // Column(
        //   children: <Widget>[
        //     IconBadge(Icons.chat),
        //     IconBadge(Icons.chat,size: 64.0),
        //   ],
        // );
        );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

// 构造方法
  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 10.0,
      height: size + 10.0,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
