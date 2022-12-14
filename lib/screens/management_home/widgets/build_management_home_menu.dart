
import 'package:archive/screens/document_archive/document_archive.dart';
import 'package:archive/screens/members_archive/members_archive.dart';
import 'package:archive/ui/theme/archive_primary_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildManagementHomeMenu extends StatelessWidget {
  const BuildManagementHomeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildButtonMenu(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (c) => const DocumentArchiveScreen(),
                ),
              );
            },
            text: 'Manajemen Dokumen',
            icon: Icons.description,
            context: context),
        _buildButtonMenu(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (c) => const MembersArchiveScreen(),
                ),
              );
            },
            text: 'Manajemen Anggota',
            icon: Icons.account_circle_outlined,
            context: context)
      ],
    );
  }

  Widget _buildButtonMenu(
      {required Function() onTap,
        required String text,
        required IconData icon,
        required BuildContext context}) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 170,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: 60,
                  color: ArchiveTheme.primaryColor
                ),
                const SizedBox(
                  width: 8,
                ),
                Flexible(
                    child: Text(
                      text,
                      style: ArchiveTheme.subTitle,
                      textAlign: TextAlign.center,)
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
