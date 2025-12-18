import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
   return Drawer(
     child: Container(
       color: Colors.purple,
       child: ListView(
         padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.purple
              ),
              accountName: Text("mubeen khanzada", style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                    accountEmail: Text("abcd@123",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
               currentAccountPicture: CircleAvatar(
                   backgroundImage: AssetImage("assets/images/login_page.jpg")
               ),
                ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.black,

              ),
              title: Text("Home",
                  style:TextStyle(
                fontSize: 20, fontWeight:FontWeight.bold
              ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.black,
              ),
              title: Text("Profile",
                style:TextStyle(
                    fontSize: 20, fontWeight:FontWeight.bold
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.black,
              ),
              title: Text("Email",
                style:TextStyle(
                    fontSize: 20, fontWeight:FontWeight.bold
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.phone, color: Colors.black,
              ),
              title: Text("contact ",
                style:TextStyle(
                    fontSize: 20, fontWeight:FontWeight.bold
                ),
              ),
            )
          ],
        ),
     ),
    );
  }
}
