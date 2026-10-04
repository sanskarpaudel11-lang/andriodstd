import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("luke2026"),
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Icon(Icons.more_horiz),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("assets/images/nicoles.png",
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                  children: [
                    Text("145"),
                    Text("Posts")
                  ]
              ),
              Column(
                  children: [
                    Text("1B"),
                    Text("Followers")
                  ]
              ),
              Column(
                  children: [
                    Text("0"),
                    Text("Following")
                  ]
              )
            ],
          )

        ],
      ),

    );
  }
}