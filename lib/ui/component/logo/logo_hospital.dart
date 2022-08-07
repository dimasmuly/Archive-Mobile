import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoHospital extends StatelessWidget {
  const LogoHospital({Key? key, this.isColored = false}) : super(key: key);

  final bool isColored;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Image.asset(isColored 
              ? 'assets/hospital.png' 
              : 'assets/hospital.png'),
            const SizedBox(height: 25.24),
            Text(
              'Archive Hospital',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color:isColored ? const Color.fromARGB(255, 5, 153, 25) : Colors.white,
              ),
            ),
            Text(
              'Melayani Sepenuh Hati',
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                color:isColored ? const Color.fromARGB(255, 5, 153, 25) : Colors.white,
              ),
            ),
      ],
    );
  }
}