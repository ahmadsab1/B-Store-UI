import 'package:b_store_task2/widgets/password_widget.dart';
import 'package:b_store_task2/widgets/textfield_with_check.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController _emailController;
  late TextEditingController _mobilenumberController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _mobilenumberController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _mobilenumberController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 15,
                    offset: const Offset(5, 5),
                  ),
                ],
              ),
              child: Center(
                child: Image.asset('images/Logo.png'),
              ),
            ),
            const Spacer(),
            TextFieldWithCheck(
              controller: _emailController,
              prefixIcon: Icons.email_outlined,
              hint: 'Email',
              keyboardKey: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFieldWithCheck(
              controller: _mobilenumberController,
              prefixIcon: Icons.phone_iphone_outlined,
              hint: 'Mobile Number',
              keyboardKey: TextInputType.number,
            ),
            const SizedBox(
              height: 20,
            ),
            PasswordWidget(passwordcontroller: _passwordController),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () => _preformSave(),
              child: const Text('Create an account'),
            ),
            const Spacer(),
            TextButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/sign_in_screen'),
              child: Text('Already have account?',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff586BCA),
                  )),
            )
          ],
        ),
      ),
    );
  }

  void _preformSave() {
    if (checkData()) {
      _save();
    }
  }

  bool checkData() {
    if (_emailController.text.isNotEmpty &&
        _mobilenumberController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      return true;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('enter the required data'),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.red,
      ),
    );
    return false;
  }

  void _save() {
    Navigator.pushReplacementNamed(context, '/bottom_bar_screen');
  }
}
