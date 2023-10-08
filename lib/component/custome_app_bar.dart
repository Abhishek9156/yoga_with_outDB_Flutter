import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  AnimationController animationController;
  Animation colorTween, homeTween, yogaTween, iconTween, drawerTween;
  Function()? onPressed;

  CustomeAppBar(
      {super.key,
      required this.animationController,
      required this.colorTween,
      required this.homeTween,
      required this.yogaTween,
      required this.iconTween,
      required this.onPressed,
      required this.drawerTween});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) => AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.dehaze,
              color: drawerTween.value,
            ),
            onPressed: onPressed,
          ),
          backgroundColor: colorTween.value,
          elevation: 0,
          title: Row(
            children: [
              Text(
                "HOME ",
                style: TextStyle(
                    color: homeTween.value,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "YOGA",
                style: TextStyle(
                    color: yogaTween.value,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("No New Notifications"),
                ));
              },
              color: iconTween.value,
            ),
          ],
        ),
      ),
    );
  }
}
