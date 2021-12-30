import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl="https://yt3.ggpht.com/YGQMK_8YmlqPB7xy7NrlYSSLClMCCEGmlggmWumpwNIJuGy4uxw7z563usuY-48dCz5Y96oP=s900-c-k-c0x00ffffff-no-rj";
    return Drawer(
      child: Container(
        color: Colors.yellow,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Chetan Harvara"),
                  accountEmail: Text("Chetanharvara545@mail.com"),
                  //currentAccountPicture: Image.network(imageUrl),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text("Home", textScaleFactor: 1.2,),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text("Profile", textScaleFactor: 1.2,),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail),
              title: Text("Email Me", textScaleFactor: 1.2,),
            )
          ],
        ),
      ),
    );
  }
}
