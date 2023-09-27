import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileListWidget extends StatelessWidget {
  const ProfileListWidget({
    required this.title,
    required this.leading,
    required this.trailing,
    required this.ontap,
    super.key,
  });

  final String title;
  final IconData leading;
  final IconData trailing;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: Icon(
        leading,
        color: const Color(0xff586BCA),
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: const Color(0xff1B2A3B),
        ),
      ),
      trailing: Icon(
        trailing,
        color: const Color(0xff586BCA),
      ),
    );
  }
}
