import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldWithCheck extends StatefulWidget {
  const TextFieldWithCheck({
    required this.controller,
    required this.prefixIcon,
    required this.hint,
    required this.keyboardKey,
    super.key,
  });

  final TextEditingController controller;
  final IconData prefixIcon;
  final String hint;
  final TextInputType keyboardKey;

  @override
  State<TextFieldWithCheck> createState() => _TextFieldWithCheckState();
}

class _TextFieldWithCheckState extends State<TextFieldWithCheck> {
  Color _suffixIconColor = Colors.transparent;
  Color _borderSideColor = Colors.black.withOpacity(0.10);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboardKey,
      onChanged: (value) {
        setState(
          () {
            if (widget.controller.text.isNotEmpty) {
              _suffixIconColor = const Color(0xff00BB1A);
              _borderSideColor = const Color(0xff586BCA);
            } else {
              _suffixIconColor = Colors.transparent;
              _borderSideColor = Colors.black.withOpacity(0.10);
            }
          },
        );
      },
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.check,
          color: _suffixIconColor,
        ),
        prefixIcon: Icon(
          widget.prefixIcon,
          color: const Color(0xff1B2A3B).withOpacity(0.4),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: _borderSideColor,
          ),
        ),
        hintText: widget.hint,
        hintStyle: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: const Color(0xff1B2A3B).withOpacity(0.4),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xff586BCA),
          ),
        ),
      ),
    );
  }
}
