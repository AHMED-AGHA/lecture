import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/model/checkbox.dart';
import 'package:lecture4/model/checkboxList.dart';

class MyCheckbox extends StatefulWidget {
  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  final allChecked = CheckBoxModel(title: 'All Checked');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Checkbox Example'),
        ),
        body: ListView(
          children: [
            ListTile(
              onTap: () => onAllClicked(allChecked),
              leading: Checkbox(
                value: allChecked.value,
                onChanged: (value) => onAllClicked(allChecked),
              ),
              title: Text(
                allChecked.title,
                style: GoogleFonts.lato(fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            ...checkBoxList.map((item) {
              return ListTile(
                onTap: () => onItemClicked(item),
                leading: Checkbox(
                  value: item.value,
                  onChanged: (value) => onItemClicked(item),
                ),
                title: Text(
                  item.title,
                  style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                ),
              );
            }).toList()
          ],
        ));
  }

  onAllClicked(CheckBoxModel checkBoxModel) {
    final val = !checkBoxModel.value;

    setState(() {
      checkBoxModel.value = val;
    });
    checkBoxList.forEach((element) {
      element.value =val;
    });
  }

  onItemClicked(CheckBoxModel checkBoxModel) {
    // final valItem = !checkBoxModel.value;

    setState(() {
      checkBoxModel.value = !checkBoxModel.value;
    });
    //
    final allListChecked = checkBoxList.every((element) => element.value);
    allChecked.value = allListChecked;
  }
}
