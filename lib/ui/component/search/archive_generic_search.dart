import 'package:archive/ui/theme/archive_primary_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArchiveGenericSearch extends StatelessWidget{
  ArchiveGenericSearch({Key? key}) : super(key: key);
  final TextEditingController txtQuery = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
        child: TextFormField(
          controller: txtQuery,
          // onChanged: search,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black45,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: "Cari",
            hintStyle: ArchiveTheme.bodyText,
            prefixIcon: Icon(Icons.search),
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {},
            ),
          ),
        ),
    );
  }

}