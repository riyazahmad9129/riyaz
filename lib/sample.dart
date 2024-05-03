import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';
import 'package:untitled/components/gap.dart';

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(height: 50,),
            DropdownSearch<String>(
              popupProps: PopupProps.menu(
                showSelectedItems: true,

              ),
              items: ["Brazil", "Italia ", "Tunisia", 'Canada'],
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                 prefixIcon: Icon(Icons.search),
                  hintText: "country in menu mode",
                ),
              ),
              onChanged: print,
              selectedItem: "Brazil",
            ),
          ],
        )
      //
      //   child: DropdownSearch<String>.multiSelection(
      // items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
      //   popupProps: PopupPropsMultiSelection.menu(
      //     showSelectedItems: true,
      //     disabledItemFn: (String s) => s.startsWith('I'),
      //   ),
      //   onChanged: print,
      //   selectedItems: ["Brazil"],
      // ),
      ),
    );
  }
}
