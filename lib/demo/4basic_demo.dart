import 'package:flutter/material.dart';

// 文字基本样式 Text
class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 26.0);
  final String _author = '李白';
  final String _title = '将进酒';
  @override
  Widget build(BuildContext context) {
    return Text(
      '$_title -- $_author  -- 一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗一首古诗',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

// RichText样式
class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: 'qianxuemin',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100,
            ),
            children: [
          TextSpan(
              text: '.com', style: TextStyle(fontSize: 17.0, color: Colors.red))
        ]));
  }
}

// ContainerDemo
class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // 容器的背景颜色 容器默认占满 如果设置大小 需要私有column 或者row
        // color: Colors.green[100],
        // 背景图
        decoration:BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1399663922,2271186776&fm=26&gp=0.jpg'),
            alignment: Alignment.topCenter,
            // repeat: ImageRepeat.repeat,
            fit: BoxFit.cover
          )
        ),
        child: Row(
            // 居中显示
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Icon(Icons.pool, size: 32.0, color: Colors.white),
                // color: Color.fromRGBO(3, 54, 255, 1.0),
                padding: EdgeInsets.all(16.0),
                // padding: EdgeInsets.only(left: 16.0,right: 30.0),
                margin: EdgeInsets.all(16.0),
                width: 90.0,
                height: 90.0,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    border: Border.all(
                        color: Colors.indigoAccent[100],
                        width: 3.0,
                        style: BorderStyle.solid),
                    // border: Border(
                    //     top: BorderSide(
                    //         color: Colors.indigoAccent[100],
                    //         width: 3.0,
                    //         style: BorderStyle.solid)),
                    // 圆形不能使用圆角效果
                    // borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.0, 16.0),
                        color: Color.fromRGBO(16, 20, 100, 1.0),
                        blurRadius: 25.0,
                        spreadRadius: -9.0,
                      )
                    ],
                    shape: BoxShape.circle,
                    // // 径向渐变
                    // gradient: RadialGradient(colors: [
                    //   Color.fromRGBO(7, 102, 255, 1.0),
                    //   Color.fromRGBO(3, 28, 128, 1.0),
                    // ])),
                    //线性渐变
                    gradient: LinearGradient(
                      colors: [
                      Color.fromRGBO(7, 102, 255, 1.0),
                      Color.fromRGBO(3, 28, 128, 1.0),
                    ],
                    begin:Alignment.topCenter,
                    end:Alignment.bottomCenter
                    )),
                    
              ),
            ]));
  }
}
