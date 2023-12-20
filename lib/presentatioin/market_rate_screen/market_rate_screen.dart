import 'package:baliraja/constants/app_images.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/dropdown_button.dart';
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
class MarketRateScreen extends StatefulWidget {
  const MarketRateScreen({super.key});

  @override
  State<MarketRateScreen> createState() => _MarketRateScreenState();
}

class _MarketRateScreenState extends State<MarketRateScreen> {
   final List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
    String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _firstrow(),
          _dropdownrow(),
          _container(),
          _chartcontainer(),
          _lastSlider(),
        ],
      ),
    );
  }

  _firstrow() {
    return Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.arrow_back_ios),
        TextWidget(
          data: "baliRaja",
        ),
        CircleAvatar(radius: 40,
        backgroundImage: AssetImage(AppImages.bgimages),)
      ],
    );
  }
  
  _dropdownrow() {
    return Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
     CustomDropdownButton(
          items: dropdownItems,
          selectedValue: selectedValue,
          onChanged: (String newValue) {
            // Handle the selected value
            print('Selected value: $newValue');
            // Update the state to reflect the selected value
            selectedValue = newValue;
          },
          color: Colors.blue, // Optional: Customize color
          fontWeight: FontWeight.bold, // Optional: Customize font weight
          fontSize: 20.0, // Optional: Customize font size
        ),
      
      ],
    );
  }
  
  _container() {

     return Container(
      height: 100,
      width: double.infinity,
      color: Colors.red,
      child: Row(),
     );
  }
  
  _chartcontainer() {
    return Table(
  border: TableBorder.all(), // Allows to add a border decoration around your table
  children: [ 
    TableRow(children :[
      Text('Year'),
      Text('Lang'),
      Text('Author'),
    ]),
    TableRow(children :[
      Text('2011',),
      Text('Dart'),
      Text('Lars Bak'),
    ]),
    TableRow(children :[
      Text('1996'),
      Text('Java'),
      Text('James Gosling'),
    ]),
  ]
);
  }
  
  _lastSlider() {
    return Container(
      color: Colors.amber,
      width: double.infinity,
      height: 100,
      child: Row(),
    );
  }
}



class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
