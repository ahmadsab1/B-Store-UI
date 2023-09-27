import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecoverAccountScreen extends StatefulWidget {
  const RecoverAccountScreen({super.key});

  @override
  State<RecoverAccountScreen> createState() => _RecoverAccountScreenState();
}

class _RecoverAccountScreenState extends State<RecoverAccountScreen> {
  late TextEditingController _emailphoneController;

  @override
  void initState() {
    _emailphoneController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailphoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(45),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xff586BCA),
                      size: 17,
                    ),
                  ),
                  Text(
                    'Back',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff586BCA)),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  'Recover \n your account',
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              TextField(
                controller: _emailphoneController,
                decoration: InputDecoration(
                  hintText: 'Enter email or phone number ',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.10),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushReplacementNamed(
                    context, '/bottom_bar_screen'),
                child: const Text('Next'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
