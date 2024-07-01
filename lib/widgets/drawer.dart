import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl= "https://th.bing.com/th?id=OIP.xKMjPnc20tpjaKl34FZwkgHaHs&w=245&h=254&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2";
     return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child:UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black
              ),
              margin: EdgeInsets.zero,
               accountName: Text("Pawan Kumar"),
            accountEmail: Text("mtechviral@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl),))
        ),
        ListTile(
          leading: Icon(CupertinoIcons.home),
          title: Text("Home",
          textScaleFactor: 1.2,),
        
        ),
        ListTile(
          leading: Icon(CupertinoIcons.profile_circled),
          title: Text("Profile",
          textScaleFactor: 1.2,),
        
        ),
        ListTile(
          leading: Icon(CupertinoIcons.mail),
          title: Text("Email",
          textScaleFactor: 1.2,),
        
        )

        ],
      ),
    );
  }
}