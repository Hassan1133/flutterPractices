import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String imageUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToDuXem5-mF7ZSH9xusZk5-62sO6h67TNcBw&usqp=CAU";
    String name = "M.Hassan";
    String email = "mhassanidrees575@gmail.com";
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text(
                    name,
                    style: TextStyle(fontSize: 22),
                  ),
                  accountEmail: Text(email),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.3,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.3,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
