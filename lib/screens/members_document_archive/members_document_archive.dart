import 'package:archive/screens/document_archive/add_document_archive.dart';
import 'package:archive/screens/document_archive/widgets/document_item.dart';
import 'package:archive/screens/management_home/manajemen_home_screen.dart';
import 'package:archive/screens/members_document_archive/widgets/members_document_item.dart';
import 'package:archive/screens/members_home/members_home_screen.dart';
import 'package:archive/ui/component/search/archive_generic_search.dart';
import 'package:archive/ui/theme/archive_primary_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MembersDocumentArchiveScreen extends StatefulWidget{
  const MembersDocumentArchiveScreen({Key? key}) : super(key: key);

  @override
  _MembersDocumentArchiveScreen createState() => _MembersDocumentArchiveScreen();
  }

class _MembersDocumentArchiveScreen extends State<MembersDocumentArchiveScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ArchiveTheme.primaryColor,
        title: Text('List Document', style: ArchiveTheme.subTitle),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: dimen16),
                ArchiveGenericSearch(),
                BuildMembersFolderDocument(),
                BuildMembersFolderDocument(),
                BuildMembersFolderDocument(),
                BuildMembersFolderDocument(),
                BuildMembersFolderDocument(),
                BuildMembersFolderDocument(),
              ],
            )
        ),
      )
    );
  }
}

