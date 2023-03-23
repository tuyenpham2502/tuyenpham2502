import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline2: GoogleFonts.montserrat(color: Colors.black87),
    subtitle2: GoogleFonts.poppins(
      color: Colors.black54,
      fontSize: 12 .sp,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headline2: GoogleFonts.montserrat(color: Colors.white),
    subtitle2: GoogleFonts.poppins(
      color: Colors.white70, 
      fontSize: 12 .sp, 
      ),
  );
}
