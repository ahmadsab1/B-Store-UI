import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileTextField extends StatefulWidget {
  const EditProfileTextField({
    required this.controller,
    required this.hint,
    required this.textinputtype,
    super.key,
  });

  final TextEditingController controller;

  final String hint;

  final TextInputType textinputtype;

  @override
  State<EditProfileTextField> createState() => _EditProfileTextFieldState();
}

class _EditProfileTextFieldState extends State<EditProfileTextField> {
  Color _color = Colors.black.withOpacity(0.1);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.textinputtype,
      onChanged: (value) {
        setState(() {
          _color = widget.controller.text.isEmpty
              ? _color = Colors.black.withOpacity(0.1)
              : const Color(0xff586BCA);
        });
      },
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: const Color(0xff1B2A3B).withOpacity(0.4)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
            color: _color,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xff586BCA),
          ),
        ),
      ),
    );
  }
}
