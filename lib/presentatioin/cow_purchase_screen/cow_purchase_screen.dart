import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_string.dart';
import 'package:flutter/material.dart';

class Cow_Purchase_Screen extends StatelessWidget {
  const Cow_Purchase_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Scaffold(
        // backgroundColor: AppColors.grayColor,
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: AppColors.blackColor,
              ),
              Text(AppStrings.cowpurchasetext),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'data:image/jpeg;base64,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'),
                radius: 20,
              ),
            ],
          ),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT55hwiaJ6DzJ_0CeAjiskGMZYQ98-Axi0guA&usqp=CAU",
                    width: 100,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(
                  height: 12.5,
                ),

                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    "data:image/jpeg;base64,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",
                    width: 100,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(
                  height: 12.5,
                ),

                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXUT-jB6Yo0q154tnBPt7yFogiTYLIw3aCYQ&usqp=CAU",
                    width: 100,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(
                  height: 12.5,
                ),
                // Text(
                //   AppStrings.khilari,
                //   style: TextStyle(
                //     fontSize: 16,
                //     color: AppColors.grayColor,
                //   ),
                // ),

                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: AppColors.grayColor,
              ),
            ),
            height: 370,
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSym9U0daRWei4iAFUYyw071_E9xRoSVQiaQ&usqp=CAU"),
                      ),
                      Text(
                        AppStrings.prizetext,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const Text(AppStrings.shmtatext,
                      style: TextStyle(fontSize: 23)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        AppStrings.cowtext,
                        style: TextStyle(fontSize: 23),
                      ),
                      Icon(Icons.favorite_border),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.watch_later),
                      Text(AppStrings.minittext),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.locationicon,
                      ),
                      const Text(AppStrings.mahamarga),
                    ],
                  ),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(
                        "data:image/jpeg;base64,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",
                        width: 280,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Text(AppStrings.cowinformation),
                  const Text(AppStrings.cowinfoall),
          
                  Row(
                    children: [
                      // Text(AppStrings.sellertext),
                      // Text(AppStrings.phonetext),
                      // IconButton(
                      //   icon: Icon(Icons.call,color: AppColors.darkBlue,),
                      //   onPressed: () {},
                      // ),
                    ],
                  )
                ],
              ),
            ),
          ),

          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: AppColors.blackColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notification_add),
                label: 'Notification',
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: 'call',
                backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Colors.pink,
              ),
            ],
            // currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            // onTap: _onItemTapped,
          ),
        ]),
      ),
    );
  }
}
