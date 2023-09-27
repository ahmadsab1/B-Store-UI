import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeGridView extends StatefulWidget {
  const HomeGridView({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.oldPrice,
    required this.ontap,
    super.key,
  });

  final String image;
  final String title;
  final String subtitle;
  final int price;
  final int oldPrice;

  final Function() ontap;

  @override
  State<HomeGridView> createState() => _HomeGridViewState();
}

class _HomeGridViewState extends State<HomeGridView> {
  Color _color = const Color(0xffC0C0C0);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: widget.ontap,
          child: Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              color: const Color(0xffFAFAFA),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Center(child: Image.asset(widget.image)),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          _color == const Color(0xffC0C0C0)
                              ? _color = const Color(0xffF45959)
                              : _color = const Color(0xffC0C0C0);
                        },
                      );
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: _color,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            Text(
              widget.title,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: const Color(0xff586BCA),
              ),
            ),
          ],
        ),
        Text(
          widget.subtitle,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: const Color(0xff1B2A3B),
          ),
        ),
        Row(
          children: [
            Text(
              'USD${widget.price}',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: const Color(0xff8FA1B4),
              ),
            ),
            const SizedBox(
              width: 9,
            ),
            Text(
              'USD${widget.oldPrice}',
              style: GoogleFonts.poppins(
                decoration: TextDecoration.lineThrough,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: const Color(0xffF45959),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
