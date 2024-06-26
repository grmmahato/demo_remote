import 'package:flutter/material.dart';

import 'common/custom_textform_field.dart';

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.w600),
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
              const SizedBox(
                height: 20,
              ),
              Text(
                "店舗名*",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              const CustomTextFormField(
                hintText: "Mer キッチン",
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "代表担当者名*",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              const CustomTextFormField(
                hintText: "林田　絵梨花",
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "店舗電話番号*",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              const CustomTextFormField(
                hintText: "123 - 4567 8910",
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "店舗住所*",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              const CustomTextFormField(
                hintText: "大分県豊後高田市払田791-13",
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
