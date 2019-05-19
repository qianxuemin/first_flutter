import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // DrawerHeader(
              //   child: Text('header'.toUpperCase()),
              //   decoration: BoxDecoration(color: Colors.grey[100]),
              // ),
              UserAccountsDrawerHeader(
                accountName: Text('qianxuemin',style:TextStyle(fontWeight:FontWeight.bold)),
                accountEmail: Text('qianxuemin001@ke.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://upload.jianshu.io/users/upload_avatars/11153252/b8177662-0920-471c-911f-9004ddf85939?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240'),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1399663922,2271186776&fm=26&gp=0.jpg'),
                    fit: BoxFit.cover,
                    // 滤镜
                    colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6), 
                      BlendMode.hardLight)
                  )
                ),
              ),
              ListTile(
                title: Text('Message', textAlign: TextAlign.right),
                leading: Icon(
                  Icons.message,
                  color: Colors.black12,
                  size: 22.0,
                ),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Favorite', textAlign: TextAlign.right),
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.black12,
                  size: 22.0,
                ),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Settings', textAlign: TextAlign.right),
                trailing: Icon(
                  Icons.settings,
                  color: Colors.black12,
                  size: 22.0,
                ),
                onTap: () => Navigator.pop(context),
              )
            ],
          ),
        );
  }
}