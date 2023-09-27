import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPlacedScreen extends StatefulWidget {
  const OrderPlacedScreen({super.key});

  @override
  State<OrderPlacedScreen> createState() => _OrderPlacedScreenState();
}

class _OrderPlacedScreenState extends State<OrderPlacedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(44),
        child: Column(
          children: [
            const Spacer(),
            Image.asset('images/Order Placed.png'),
            const SizedBox(
              height: 70,
            ),
            Text(
              'Order Success!',
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
              'Thank you for ordering,\nYour order placed and on the \nway to your address.',
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
