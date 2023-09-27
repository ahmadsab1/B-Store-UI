import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('images/Card.png'),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 6,),
              Text(
                '1234  5678  9123  4567',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Text(
                    'Cardholder',
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Exp.Date',
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Tanya Robinson',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '02/23',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
