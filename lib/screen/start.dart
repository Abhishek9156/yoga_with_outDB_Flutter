import 'package:flutter/material.dart';
import 'package:yoga/screen/rUready.dart';

class StartUp extends StatefulWidget {
  const StartUp({super.key});

  @override
  State<StartUp> createState() => _StartUpState();
}

class _StartUpState extends State<StartUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => rUready()));
        },
        child: Text("Start"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              title: Text("Yoga"),
              background: Image.network(
                "https://images.unsplash.com/photo-1545389336-cf090694435e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHlvZ2F8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "16 Mins || 26 Workouts",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => ListTile(
                              title: Text("Yoga $index"),
                              subtitle:
                                  Text((index % 2 == 0) ? "00:20" : "x20"),
                              leading: Image.network(
                                "https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExbzJrcmpuMXYzMWppMGZudXZ4NjVscGR3eWpuc3Vob2UwajEwZTM3NCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/wwPFdcOfBni0xrepQw/giphy.gif",
                                fit: BoxFit.cover,
                              ),
                            ),
                        separatorBuilder: (context, index) =>
                            Divider(thickness: 2),
                        itemCount: 10)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
