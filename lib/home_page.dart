import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Color bgIconColor = const Color(0xffB8B8B8);
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xffB8B8B8).withOpacity(0.1),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: bgIconColor,
                  ),
                ),
                Text(
                  "店舗プロフィール編集",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Icon(
                        Icons.notifications_none,
                        size: 30,
                      ),
                    ),
                    Positioned(
                        top: 0,
                        left: 20,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0xffEE7D42),
                          child: Text(
                            "99+",
                            style: TextStyle(fontSize: 10),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
