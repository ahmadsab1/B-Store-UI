import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyCartScreen extends StatefulWidget {
  const EmptyCartScreen({super.key});

  @override
  State<EmptyCartScreen> createState() => _EmptyCartScreenState();
}

class _EmptyCartScreenState extends State<EmptyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(44),
        child: Column(
          children: [
            const Spacer(),
            Image.asset('images/Empty Cart.png'),
            const SizedBox(
              height: 70,
            ),
            Text(
              'Cart is Empty!',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: const Color(0xff1B2A3B),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Let’s find something special for you.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: const Color(0xff1B2A3B).withOpacity(0.7),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/bottom_bar_screen', (route) => false),
              child: const Text(
                'Back to Home',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
