import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItemsWidget extends StatefulWidget {
  CartItemsWidget({
    required this.image,
    required this.title,
    required this.prise,
    required this.oldprise,
    required this.itemNumber,
    super.key,
  });

  final String title;
  final String image;
  final int prise;
  final int oldprise;
  int itemNumber;

  @override
  State<CartItemsWidget> createState() => _CartItemsWidgetState();
}

class _CartItemsWidgetState extends State<CartItemsWidget> {
  late int copyPrice = widget.prise;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
            icon: Icons.delete,
            backgroundColor: Colors.red,
            label: 'Remove from Cart',
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(widget.image),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'USD$copyPrice',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff8FA1B4),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'USD${widget.oldprise}',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffF45959),
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffEAEAEA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.itemNumber++;
                          copyPrice += widget.prise;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Color(0xff586BCA),
                      ),
                    ),
                    Text(
                      '${widget.itemNumber}',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.itemNumber--;
                          copyPrice -= widget.prise;
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Color(0xff586BCA),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
