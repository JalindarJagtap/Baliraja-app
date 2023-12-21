import 'package:baliraja/constants/app_images.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 142, 234, 234),
          title: Center(
              child: TextWidget(
            context: context,
            data: "बळीराजा",
          )),
          actions: [
            Container(
              height: double.infinity,
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.brightness_2),
                  CircleAvatar(
                      backgroundImage:
                          Image.asset(AppImages.circleAvatarimages).image)
                ],
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text("Jalindar Jagtap"),
                accountEmail: Text("jalindarjagtap@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(AppImages.circleAvatarimages),
                ),
              ),
              ListTile(
                title: TextWidget(
                  context: context,
                  data: "Dashboard",
                ),
                onTap: () {},
              ),
              ListTile(
                title: TextWidget(
                  context: context,
                  data: "Sell Cow",
                ),
                onTap: () {},
              ),
              ListTile(
                title: TextWidget(
                  context: context,
                  data: "View Market Rates",
                ),
                onTap: () {},
              ),
              ListTile(
                title: TextWidget(
                  context: context,
                  data: "Themes",
                ),
                onTap: () {},
              ),
              ListTile(
                title: TextWidget(
                  context: context,
                  data: "Edit Profile",
                ),
                onTap: () {},
              ),
              ListTile(
                title: TextWidget(
                  context: context,
                  data: "Settings",
                ),
                onTap: () {},
              ),
              ListTile(
                title: TextWidget(
                  context: context,
                  data: "About Our App",
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 185.h,
              ),
              ListTile(
                title: TextWidget(
                  context: context,
                  data: "Version 1.0",
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Column(
          children: [
          ],
        ),
      ),
    );
  }
}
