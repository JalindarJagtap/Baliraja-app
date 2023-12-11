
import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_string.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MerchantScreen extends StatefulWidget {
  const MerchantScreen({super.key});

  @override
  State<MerchantScreen> createState() => _MerchantScreenState();
}

class _MerchantScreenState extends State<MerchantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.grayColor,
          title: const Text(AppStrings.vyaparivarg,
              style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.blackColor)), 
              centerTitle: true,
             leading: IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () {
   
    },
  ),

              actions: const [
              Padding(
                padding: EdgeInsets.all(5),
                child: CircleAvatar(
                           backgroundImage: AssetImage("assets/Images/farmer.png"),
                ),
              )
              ],
              ),
              
      body: Column(
        children: [_table()],
      ),
    );
  }

  _table() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5 ),
        child: Column(
          children: [
           const  Text(AppStrings.sangamner, style: TextStyle(fontSize:20, fontWeight:FontWeight.bold),),
            Table(
                border: TableBorder.all(color: AppColors.darkBlue),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                const    TableRow(
                      decoration: BoxDecoration(color: AppColors.whiteColor),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child:
                              TableCell(child:
                              
                               Text(AppStrings.vyaparyachenav, style: TextStyle(
                                fontWeight: FontWeight.bold, 
                              
                               ),)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TableCell(child: Text(AppStrings.comapnyname, style: TextStyle(
                                fontWeight: FontWeight.bold, 
                              
                               ),)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TableCell(child: Text(AppStrings.malachenav,style: TextStyle(
                                fontWeight: FontWeight.bold, 
                              
                               ),)),
                        ),
                      ]),
                  ...List.generate(
                      1,
                      (index) => const TableRow(children: [
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: 
                                Column(children: [
                                  Text(AppStrings.babasaheb),
                                  
      
                                ],)
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(AppStrings.navle),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(AppStrings.mala),
                              ),
                            ),
                          ])
                          ),
                          ...List.generate(
                      1,
                      (index) => const TableRow(children: [
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: 
                                Column(children: [
                                  Text(AppStrings.mansukh),
                                  
      
                                ],)
                                //Text(AppStrings.babasaheb),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(AppStrings.bhandari),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(AppStrings.malb),
                              ),
                            ),
                          ])
                          ),
                          ...List.generate(
                      1,
                      (index) => const TableRow(children: [
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: 
                                Column(children: [
                                  Text(AppStrings.rsik),
                                  
      
                                ],)
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(AppStrings.bagvan),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(AppStrings.malc),
                              ),
                            ),
                          ])
                          ),
                          ...List.generate(
                      1,
                      (index) => const TableRow(children: [
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: 
                                Column(children: [
                                  Text(AppStrings.sonwane),
                                  
      
                                ],)
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(AppStrings.sonwanea),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(AppStrings.mald),
                              ),
                            ),
                          ])
                          ),
                          ...List.generate(
                      1,
                      (index) => const TableRow(children: [
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: 
                                Column(children: [
                                  Text(AppStrings.satish),
                                  
      
                                ],)
                               
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(AppStrings.bagvan),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(AppStrings.male),
                              ),
                            ),
                          ])
                          )
                ]),
          ],
        ),
      ),
    );
  }
}