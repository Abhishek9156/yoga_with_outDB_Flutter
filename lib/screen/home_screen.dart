import 'package:flutter/material.dart';
import 'package:yoga/component/custom_drawer.dart';
import 'package:yoga/component/custome_app_bar.dart';
import 'package:yoga/screen/start.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorTween, _homeTween, _yogaTween, _iconTween, _drawerTween;
  late AnimationController _textAnimationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_animationController);
    _iconTween = ColorTween(begin: Colors.white, end: Colors.lightBlue)
        .animate(_animationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _homeTween = ColorTween(begin: Colors.white, end: Colors.blue)
        .animate(_animationController);
    _yogaTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _textAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));
  }

  bool scrollListner(ScrollNotification scrollNotification) {
    bool scroll = false;
    if (scrollNotification.metrics.axis == Axis.vertical) {
      _animationController.animateTo(scrollNotification.metrics.pixels / 80);
      _textAnimationController.animateTo(scrollNotification.metrics.pixels);
      return scroll = true;
    }
    return scroll;
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        body: NotificationListener(
          onNotification: scrollListner,
          child: Stack(
            children: [
              SizedBox(
                height: double.infinity,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(50, 120, 50, 30),
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    Text(
                                      "Streak",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "120",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    Text(
                                      "kCal",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "10",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    Text(
                                      "Minute",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(12),
                            child: Column
                              (
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: const Text(
                                    "Yoga for All",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StartUp()));
                                  },
                                  child: Container(
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 150,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: NetworkImage(
                                                      "https://images.newindianexpress.com/uploads/user/imagelibrary/2023/8/3/w900X450/Yoga_is_an_Ancient.jpg?w=400&dpr=2.6"))),
                                        ),
                                        Container(
                                          height: 150,
                                          color: Colors.black26,
                                        ),
                                        const Positioned(
                                          left: 10,
                                          right: 20,
                                          top: 10,
                                          child: Text(
                                            "Yoga for Begineers",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ),
                                        const Positioned(
                                          left: 12,
                                          right: 30,
                                          top: 30,
                                          child: Text(
                                            "Last time : 10 Aug",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 10),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Stack(
                                  children: [
                                    Container(
                                      height: 150,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: NetworkImage(
                                                  "https://images.newindianexpress.com/uploads/user/imagelibrary/2023/8/3/w900X450/Yoga_is_an_Ancient.jpg?w=400&dpr=2.6"))),
                                    ),
                                    Container(
                                      height: 150,
                                      color: Colors.black26,
                                    ),
                                    const Positioned(
                                      left: 10,
                                      right: 20,
                                      top: 10,
                                      child: Text(
                                        "Yoga for Begineers",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 12,
                                      right: 30,
                                      top: 30,
                                      child: Text(
                                        "Last time : 10 Aug",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 30),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: const Text(
                                    "Yoga for Student",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height: 150,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: NetworkImage(
                                                  "https://images.newindianexpress.com/uploads/user/imagelibrary/2023/8/3/w900X450/Yoga_is_an_Ancient.jpg?w=400&dpr=2.6"))),
                                    ),
                                    Container(
                                      height: 150,
                                      color: Colors.black26,
                                    ),
                                    const Positioned(
                                      left: 10,
                                      right: 20,
                                      top: 10,
                                      child: Text(
                                        "Yoga for Begineers",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 12,
                                      right: 30,
                                      top: 30,
                                      child: Text(
                                        "Last time : 10 Aug",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Stack(
                                  children: [
                                    Container(
                                      height: 150,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: NetworkImage(
                                                  "https://images.newindianexpress.com/uploads/user/imagelibrary/2023/8/3/w900X450/Yoga_is_an_Ancient.jpg?w=400&dpr=2.6"))),
                                    ),
                                    Container(
                                      height: 150,
                                      color: Colors.black26,
                                    ),
                                    const Positioned(
                                      left: 10,
                                      right: 20,
                                      top: 10,
                                      child: Text(
                                        "Yoga for Begineers",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 12,
                                      right: 30,
                                      top: 30,
                                      child: Text(
                                        "Last time : 10 Aug",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Stack(
                                  children: [
                                    Container(
                                      height: 150,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: NetworkImage(
                                                  "https://images.newindianexpress.com/uploads/user/imagelibrary/2023/8/3/w900X450/Yoga_is_an_Ancient.jpg?w=400&dpr=2.6"))),
                                    ),
                                    Container(
                                      height: 150,
                                      color: Colors.black26,
                                    ),
                                    const Positioned(
                                      left: 10,
                                      right: 20,
                                      top: 10,
                                      child: Text(
                                        "Yoga for Begineers",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 12,
                                      right: 30,
                                      top: 30,
                                      child: Text(
                                        "Last time : 10 Aug",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    CustomeAppBar(
                        animationController: _animationController,
                        colorTween: _colorTween,
                        homeTween: _homeTween,
                        yogaTween: _yogaTween,
                        iconTween: _iconTween,
                        onPressed: () {
                          scaffoldKey.currentState?.openDrawer();
                        },
                        drawerTween: _drawerTween)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
