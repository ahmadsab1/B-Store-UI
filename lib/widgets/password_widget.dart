import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({
    required this.passwordcontroller,
    super.key,
  });

  final TextEditingController passwordcontroller;

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  Color _borderColor = Colors.black.withOpacity(0.10);

  bool _isvisible = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.passwordcontroller,
      onChanged: (value) {
        setState(
          () {
            _borderColor = widget.passwordcontroller.text.isEmpty
                ? _borderColor = Colors.black.withOpacity(0.10)
                : _borderColor = const Color(0xff586BCA);
          },
        );
      },
      obscureText: _isvisible,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock_outline,
          color: const Color(0xff1B2A3B).withOpacity(0.4),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isvisible = !_isvisible;
            });
          },
          icon: Icon(
            _isvisible
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: const Color(0xff1B2A3B).withOpacity(0.4),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: _borderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xff586BCA),
          ),
        ),
        hintText: 'Password',
        hintStyle: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: const Color(0xff1B2A3B).withOpacity(0.4),
        ),
      ),
    );
  }
}
