import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  const MyDropdown({Key? key}) : super(key: key);

  @override
  State<MyDropdown> createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  List<String> langs = ["O'zbekcha", 'Русский', 'English'];
  String? selectedLang = 'O\'zbekcha';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedLang,
      isExpanded: true,
      items: langs
          .map<DropdownMenuItem<String>>(
            (item) => DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            ),
          )
          .toList(),
      onChanged: (item) => setState(() {
        selectedLang = item;
      }),
    );
  }
}
