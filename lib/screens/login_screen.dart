import 'package:archive/screens/management_home/manajemen_home_screen.dart';
import 'package:archive/ui/component/button/archive_primary_button.dart';
import 'package:archive/ui/component/input/archive_generic_input.dart';
import 'package:archive/ui/component/logo/logo_hospital.dart';
import 'package:archive/ui/component/text/archive_generic_text_input.dart';
import 'package:archive/ui/theme/archive_primary_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen>{
  final TextEditingController _nikController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: dimen16, vertical: dimen32),
                      child: Image.asset('assets/hospital.png', height: 120)),
                  Text('Silahkan login terlebih dahulu',
                      style: ArchiveTheme.subTitle.copyWith(fontSize: 18)),
                ],
              ),
            ),
            const SizedBox(height: 150,),
            const ArchiveGenericTextInputHint(text: 'NIK'),
            ArchiveGenericTextInput(
                controller: _nikController,
                inputType: TextInputType.name
            ),
            const ArchiveGenericTextInputHint(text: 'Kata Sandi'),
            ArchiveGenericTextInput(
                controller: _passwordController,
                inputType: TextInputType.visiblePassword
            ),
            ArchivePrimaryButton(
                context: context,
                text: 'Masuk',
                isEnabled: true,
                onPressed: (){
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const ManagementHomeScreen()),
                  );
                })
          ],
        ),
      ),
    );
  }

}