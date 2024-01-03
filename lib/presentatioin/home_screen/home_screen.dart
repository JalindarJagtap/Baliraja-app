import 'package:baliraja/constants/app_images.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
import 'package:baliraja/widgets/textform_field_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
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
    List<String> imagePaths = [
      AppImages.nature,
      AppImages.nature2,
      AppImages.nature3,
      AppImages.nature4,
      AppImages.nature5,
      AppImages.nature6,
    ];
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromARGB(255, 187, 196, 212),
          items: const [
            CurvedNavigationBarItem(
              child: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.search),
              label: 'Search',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.chat_bubble_outline),
              label: 'Chat',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.newspaper),
              label: 'Feed',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.perm_identity),
              label: 'Personal',
            ),
          ],
          onTap: (index) {},
        ),
        resizeToAvoidBottomInset: false,
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Container(
              height: 680.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(AppImages.bgimages),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.dstATop,
                ),
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 45.h,
                    child: TextFormFieldWidget(
                      borderRadius: BorderRadius.circular(35.r),
                      suffixicon: const Icon(Icons.search),
                    ),
                  ),
                  Container(
                    child: CarouselSlider(
                      items: imagePaths.map((imagePath) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 1.0.w),
                              decoration: BoxDecoration(
                                color: Colors.amber,
                              ),
                              child: Image.asset(
                                imagePath,
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        );
                      }).toList(),
                      options: CarouselOptions(
                        height: 230.h,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        pauseAutoPlayOnTouch: true,
                        aspectRatio: 1.0,
                        onPageChanged: (index, reason) {},
                      ),
                    ),
                  ),
                  TextWidget(
                    data: "एक निवडा :-",
                    fontSize: 25.sp,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 95.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.r),
                              image: DecorationImage(
                                image: AssetImage(AppImages.nature),
                                fit: BoxFit.fill,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.6),
                                  BlendMode.darken,
                                ),
                              )),
                          child: Center(
                            child: TextWidget(
                              data: "व्यापारी वर्ग",
                              color: Colors.white,
                              fontSize: 24.sp,
                            ),
                          ),
                        ),
                        Container(
                          height: 95.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.r),
                              image: DecorationImage(
                                image: AssetImage(AppImages.nature2),
                                fit: BoxFit.fill,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.6),
                                  BlendMode.darken,
                                ),
                              )),
                          child: Center(
                            child: TextWidget(
                              data: "बाजारभाव",
                              color: Colors.white,
                              fontSize: 24.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundColor: Colors.transparent,
                      child: ClipOval(
                        child: Image.asset(
                          AppImages.balirajaImg,
                          fit: BoxFit.fill,
                          width: 120.0,
                          height: 120.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 95.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.r),
                              image: DecorationImage(
                                image: AssetImage(AppImages.nature),
                                fit: BoxFit.fill,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.6),
                                  BlendMode.darken,
                                ),
                              )),
                          child: Center(
                            child: TextWidget(
                              data: "पशुपालन",
                              color: Colors.white,
                              fontSize: 24.sp,
                            ),
                          ),
                        ),
                        Container(
                          height: 95.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.r),
                              image: DecorationImage(
                                image: AssetImage(AppImages.nature2),
                                fit: BoxFit.fill,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.6),
                                  BlendMode.darken,
                                ),
                              )),
                          child: Center(
                            child: TextWidget(
                              data: "व्हाट्सअँप ग्रुप",
                              color: Colors.white,
                              fontSize: 24.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
