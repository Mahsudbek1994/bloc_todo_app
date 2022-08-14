import 'package:flutter/material.dart';

class StatusPicker extends StatelessWidget {
  StatusPicker({Key? key}) : super(key: key);
  final List<String> monthPicker = [
    'done',
    'in progress',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: const InputDecoration(
          isDense: true, disabledBorder: OutlineInputBorder()),
      isExpanded: true,
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.black45,
      ),
      iconSize: 30,
      borderRadius: BorderRadius.circular(15),
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
          return 'Please select';
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
