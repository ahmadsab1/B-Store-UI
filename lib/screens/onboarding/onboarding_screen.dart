import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              'Simply',
              style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color(0xff1B2A3B),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              'Select your photographer,\nthen go to session!',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color(0xff1B2A3B),
              ),
            ),
            const Spacer(),
            Image.asset('images/Onboarding photo.png'),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(135, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color(0xff586BCA),
                  ),
                  onPressed: () => Navigator.pushReplacementNamed(
                      context, '/sign_in_screen'),
                  child: const Text('Sign in'),
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(135, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xff586BCA),
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  onPressed: () => Navigator.pushReplacementNamed(
                      context, '/sign_up_screen'),
                  child: Text(
                    'Sign up',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff586BCA),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
