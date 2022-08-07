import 'package:archive/ui/component/logo/logo_hospital.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //menambahkan gambar
            const LogoHospital(isColored: true),
            const SizedBox(height: 145),
            //menambah tombol login
            ElevatedButton(
              onPressed: () {},
              child: const Text('Silahkan Login'),
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 5, 153, 25),
                  minimumSize: const Size(240.0, 40.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  textStyle: GoogleFonts.poppins(fontSize: 14.0)
                ),
            ),
          ],
        ),
      ),
    );
  }
}
