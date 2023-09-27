import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(29),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 15,
                      color: Color(0xff586BCA),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Back',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff586BCA)),
                  ),
                  const Spacer(),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: const Color(0xffEAEAEA),
                    ),
                    child: const Icon(
                      Icons.favorite,
                      color: Color(0xffF45959),
                      size: 30,
                    ),
                  )
                ],
              ),
              Center(
                child: SizedBox(
                  height: 200,
                  width: 287,
                  child: Image.asset(
                    'images/Product Image.png',
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Text(
                    'Montpellier White\nChronograph Watch',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff1B2A3B),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$189',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff1B2A3B),
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
                height: 40,
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  'Inspired by Scandinavian design and\nengineering, the ontpellier watch is a\nquality-built accessory for everyday wear.\nThis handmade timepiece has crystal quartz\nmovement, blue crocodile-embossed\nleather strap and silver water resistant\nstainless steel case.  Whether you slip it on\nsolo or with a stack of  Grand Frank bangles,\nthe result is timeless.',
                  style: GoogleFonts.poppins(
                 height: 2,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff1B2A3B).withOpacity(0.6),
                  ),
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(285, 50),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Add to Cart',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 14),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
