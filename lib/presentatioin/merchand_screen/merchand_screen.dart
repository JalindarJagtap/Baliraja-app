import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_string.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
import 'package:baliraja/widgets/drop_down_widget/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MerchantScreen extends StatefulWidget {
  const MerchantScreen({super.key});

  @override
  State<MerchantScreen> createState() => _MerchantScreenState();
}

List<String> dist = [
  "जिल्हा निवडा",
  "अहमदनगर",
  "धुळे",
  "नंदुरबार",
  "जळगाव",
  "नाशिक"
];
List<String> subdist = [
  "तालुका निवडा",
  "अकोले",
  "जामखेड",
  "कर्जत",
  "कोपरगाव",
  "नेवासा",
  "नगर",
  "पारनेर",
  "पाथर्डी",
  "राहाता",
  "राहुरी",
  "संगमनेर",
  "श्रीरामपूर",
  "शेवगाव",
  "श्रीगोंदा"
];

List<String> malname = [
  "माल निवडा",
  "कांदा",
  "बटाटा",
  "वांगे",
  "डाळिंब",
  "कोबी",
  "फ्लॉवर",
  "बिट",
  "केळी",
  "संत्री",
  "द्राक्षे",
  "मेथी",
  "कोथंबीर"
];

class _MerchantScreenState extends State<MerchantScreen> {
  //
  String? dropdownValue1 = "जिल्हा निवडा";
  String? dropdownValue2 = "तालुका निवडा";
  String? dropdownValue3 = "माल निवडा";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.textblue,
        title: const Text(
          AppStrings.vyaparivarg,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: AppColors.blackColor),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.blackColor,
          ),
          onPressed: () {},
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [_dropdown(), _table()],
        ),
      ),
    );
  }

  _dropdown() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownWidget(
                  items: [
                    dist[0],
                    dist[1],
                    dist[2],
                    dist[3],
                    dist[4],
                    dist[5],
                  ],
                  selectedValue: dropdownValue1,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue ?? '';
                    });
                  },
                ),
                DropdownWidget(
                  items: [
                    subdist[0],
                    subdist[1],
                    subdist[2],
                    subdist[3],
                    subdist[4],
                    subdist[5],
                    subdist[6],
                    subdist[7],
                    subdist[8],
                    subdist[9],
                    subdist[10],
                    subdist[11],
                    subdist[12],
                    subdist[13],
                    subdist[14],
                  ],
                  selectedValue: dropdownValue2,
                  onChanged: (String? newValue) {
                    setState(
                      () {
                        dropdownValue2 = newValue ?? '';
                      },
                    );
                  },
                ),
                DropdownWidget(
                  items: [
                    malname[0],
                    malname[1],
                    malname[2],
                    malname[3],
                    malname[4],
                    malname[5],
                    malname[6],
                    malname[7],
                    malname[8],
                    malname[9],
                    malname[10],
                    malname[11],
                    malname[12],
                  ],
                  selectedValue: dropdownValue3,
                  onChanged: (String? newValue) {
                    setState(
                      () {
                        dropdownValue3 = newValue ?? '';
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _table() {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Table(
            border: TableBorder.all(color: AppColors.darkBlue),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                decoration: const BoxDecoration(),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TableCell(
                      child: TextWidget(
                        data: AppStrings.vyaparyachenav,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).shadowColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TableCell(
                      child: TextWidget(
                        data: AppStrings.kiman,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).shadowColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TableCell(
                      child: TextWidget(
                        data: AppStrings.kmal,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).shadowColor,
                      ),
                    ),
                  ),
                ],
              ),
              ...List.generate(
                1,
                (index) => TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextWidget(
                              data: AppStrings.babasaheb,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).shadowColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextWidget(
                          data: AppStrings.navle,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).shadowColor,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextWidget(
                          data: AppStrings.mala,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).shadowColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ...List.generate(
                1,
                (index) => TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextWidget(
                              data: AppStrings.mansukh,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).shadowColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextWidget(
                          data: AppStrings.bhandari,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).shadowColor,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextWidget(
                          data: AppStrings.malb,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).shadowColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ...List.generate(
                1,
                (index) => TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextWidget(
                              data: AppStrings.rsik,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).shadowColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextWidget(
                          data: AppStrings.bagvan,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).shadowColor,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextWidget(
                          data: AppStrings.malc,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).shadowColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ...List.generate(
                1,
                (index) => TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextWidget(
                              data: AppStrings.sonwane,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).shadowColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextWidget(
                          data: AppStrings.sonwanea,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).shadowColor,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextWidget(
                          data: AppStrings.mald,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).shadowColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ...List.generate(
                1,
                (index) => TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextWidget(
                              data: AppStrings.satish,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).shadowColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextWidget(
                          data: AppStrings.bhandari,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).shadowColor,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextWidget(
                          data: AppStrings.mald,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).shadowColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
