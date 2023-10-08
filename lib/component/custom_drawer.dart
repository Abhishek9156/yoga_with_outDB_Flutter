import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1545389336-cf090694435e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHlvZ2F8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"))),
          ),
          const ListTile(
            title: Text(
              "Restart Progress",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.refresh,
              size: 25,
            ),
          ),
          const ListTile(
            title: Text(
              "Shate with Friends",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.share,
              size: 25,
            ),
          ),
          const ListTile(
            title: Text(
              "Rate Us",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.star,
              size: 25,
            ),
          ),
          const ListTile(
            title: Text(
              "Feedback",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.comment,
              size: 25,
            ),
          ),
          const ListTile(
            title: Text(
              "Privacy Policy",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.security,
              size: 25,
            ),
          ),
          const Divider(
            height: 2.5,
            color: Colors.grey,
            indent: 50,
            endIndent: 50,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
                child: Text("Version 1.0.0",
                    style: TextStyle(fontWeight: FontWeight.bold))),
          )
        ],
      ),
    );
  }
}
