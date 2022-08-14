import 'package:flutter/material.dart';

class DatePick extends StatelessWidget {
  DatePick({Key? key}) : super(key: key);
  final List<String> monthPicker = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '10',
    '15',
    '20',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: const InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.all(8),
          disabledBorder: OutlineInputBorder()),
      isExpanded: true,
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.black45,
      ),
      iconSize: 30,
      items: monthPicker
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ))
          .toList(),
      validator: (value) {
        if (value == null) {
          return 'Please select date.';
        }
      },
      onChanged: (value) {
        //Do something when changing the item if you want.
      },
      onSaved: (value) {
        selectedValue = value.toString();
      },
    );
  }
}
