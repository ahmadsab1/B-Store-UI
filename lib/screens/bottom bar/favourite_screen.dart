import 'package:b_store_task2/widgets/cart_items_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  String _value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 15,
          ),
        ),
        titleSpacing: 0,
        title: Text(
          'Back',
          style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xff586BCA)),
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              _value = value;
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  height: 37,
                  value: 'Sort by price',
                  child: Row(
                    children: [
                      Text(
                        'Sort by price',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: const Color(0xff1B2A3B),
                        ),
                      ),
                      const Spacer(),
                      _value == 'Sort by price'
                          ? const Icon(
                              Icons.check,
                              color: Color(0xff00BB1A),
                            )
                          : const Icon(
                              Icons.check,
                              color: Colors.transparent,
                            ),
                    ],
                  ),
                ),
                const PopupMenuDivider(
                  height: 19,
                ),
                PopupMenuItem(
                  height: 37,
                  value: 'Sort by date',
                  child: Row(
                    children: [
                      Text(
                        'Sort by date',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: const Color(0xff1B2A3B),
                        ),
                      ),
                      const Spacer(),
                      _value == 'Sort by date'
                          ? const Icon(
                              Icons.check,
                              color: Color(0xff00BB1A),
                            )
                          : const Icon(
                              Icons.check,
                              color: Colors.transparent,
                            ),
                    ],
                  ),
                ),
                const PopupMenuDivider(
                  height: 19,
                ),
                PopupMenuItem(
                  height: 37,
                  value: 'Sort by date',
                  child: Text(
                    'Remove all items',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: const Color(0xffF45959),
                    ),
                  ),
                ),
              ];
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(29),
        child: SingleChildScrollView(
          child: Column(
            children: [
               CartItemsWidget(
                  image: 'images/Image-8.png',
                  title: 'Tag Heuer Wristwatch',
                  prise: 189,
                  oldprise: 230,
                  itemNumber: 1),
              const Divider(
                thickness: 1,
                height: 54,
              ),
               CartItemsWidget(
                  image: 'images/Image-7.png',
                  title: 'Black Stone Bracelet',
                  prise: 19,
                  oldprise: 27,
                  itemNumber: 1),
              const Divider(
                thickness: 1,
                height: 54,
              ),
               CartItemsWidget(
                  image: 'images/Image-6.png',
                  title: 'Black Rope Bracelet',
                  prise: 29,
                  oldprise: 38,
                  itemNumber: 2),
              const Divider(
                thickness: 1,
                height: 54,
              ),
              Text(
                'Total Items: 4 Items',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff8FA1B4),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              Text(
                'Total Price: \$266',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff0D213F),
                ),
              ),
              const SizedBox(
                height: 55,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
