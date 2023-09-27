import 'package:b_store_task2/widgets/hom_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select from categories',
          style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: HomeSearchDelegate(),
              );
            },
            icon: const Icon(
              Icons.search,
              color: Color(0xff586BCA),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(29),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(73, 46),
                      side: BorderSide(
                        color: const Color(0xff586BCA).withOpacity(0.25),
                      ),
                      backgroundColor: Colors.white,
                      elevation: 0),
                  onPressed: () {},
                  child: Text(
                    'Watches',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: const Color(0xff586BCA)),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(77, 46),
                      side: BorderSide(
                        color: const Color(0xff586BCA).withOpacity(0.25),
                      ),
                      backgroundColor: Colors.white,
                      elevation: 0),
                  onPressed: () {},
                  child: Text(
                    'Bracelets',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: const Color(0xff586BCA)),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(69, 46),
                      side: BorderSide(
                        color: const Color(0xff586BCA).withOpacity(0.25),
                      ),
                      backgroundColor: Colors.white,
                      elevation: 0),
                  onPressed: () {},
                  child: Text(
                    'Straps',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: const Color(0xff586BCA)),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(49, 46),
                      side: BorderSide(
                        color: const Color(0xff586BCA).withOpacity(0.25),
                      ),
                      backgroundColor: Colors.white,
                      elevation: 0),
                  onPressed: () {},
                  child: Text(
                    'Set',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: const Color(0xff586BCA)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Most Selling',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                Text(
                  'View All',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: const Color(0xff586BCA),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 214,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HomeGridView(
                      ontap: () {},
                      image: 'images/Image-3.png',
                      title: 'Bracelets',
                      subtitle: 'Black Rope Bracelet',
                      price: 29,
                      oldPrice: 38),
                  const SizedBox(
                    width: 20,
                  ),
                  HomeGridView(
                      ontap: () {},
                      image: 'images/Image-2.png',
                      title: 'Watches',
                      subtitle: 'Kinsale Watch',
                      price: 185,
                      oldPrice: 230),
                  const SizedBox(
                    width: 20,
                  ),
                  HomeGridView(
                      ontap: () {},
                      image: 'images/Image-3.png',
                      title: 'Bracelets',
                      subtitle: 'Black Rope Bracelet',
                      price: 29,
                      oldPrice: 38),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Recent Added',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                Text(
                  'View All',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: const Color(0xff586BCA),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 214,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HomeGridView(
                      ontap: () {},
                      image: 'images/Image-1.png',
                      title: 'Watches',
                      subtitle: 'Minneapolis White',
                      price: 151,
                      oldPrice: 185),
                  const SizedBox(
                    width: 20,
                  ),
                  HomeGridView(
                      ontap: () {},
                      image: 'images/Image.png',
                      title: 'Bracelets',
                      subtitle: 'Black Stone Bead',
                      price: 24,
                      oldPrice: 40),
                  const SizedBox(
                    width: 20,
                  ),
                  HomeGridView(
                      ontap: () => Navigator.pushNamed(
                          context, '/product_details_screen'),
                      image: 'images/Image-8.png',
                      title: 'Watches',
                      subtitle: 'Minneapolis White',
                      price: 189,
                      oldPrice: 38),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '',
        icon: const Icon(
          Icons.clear,
          color: Color(0xff586BCA),
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: Color(0xff586BCA),
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    ThemeData(
      primaryColor: Colors.black.withOpacity(0.5),
      colorScheme: const ColorScheme.light(
        background: Colors.black,
      ),
    );
    List<String> matchQurey = [
      'Kinsale Black Watch',
      'Black Stone Bead',
    ];
    List<String> results = [
      'Black Rope Bracelet',
    ];

    return Padding(
      padding: const EdgeInsets.all(19),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Row(
            children: [
              Text(
                'Recent Searches',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff8FA1B4),
                ),
              ),
              const Spacer(),
              Text(
                'Clear History',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff586BCA),
                ),
              ),
            ],
          ),
          ListTile(
            title: Text(matchQurey[0]),
            onTap: () {
              query = matchQurey[0];
            },
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withOpacity(0.1),
          ),
          ListTile(
            title: Text(matchQurey[1]),
            onTap: () {
              query = matchQurey[1];
            },
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withOpacity(0.1),
          ),
          Text(
            'Top Results',
            style: GoogleFonts.poppins(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: const Color(0xff8FA1B4),
            ),
          ),
          ListTile(
            title: Text(results[0]),
            onTap: () {
              query = matchQurey[0];
            },
          )
        ],
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQurey = [
      'Kinsale Black Watch',
      'Black Stone Bead',
    ];
    List<String> results = [
      'Black Rope Bracelet',
    ];
    return Padding(
      padding: const EdgeInsets.all(19),
      child: ListView(
        children: [
          Row(
            children: [
              Text(
                'Recent Searches',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff8FA1B4),
                ),
              ),
              const Spacer(),
              Text(
                'Clear History',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff586BCA),
                ),
              ),
            ],
          ),
          ListTile(
            title: Text(matchQurey[0]),
            onTap: () {
              query = matchQurey[0];
            },
          ),
          ListTile(
            title: Text(matchQurey[1]),
            onTap: () {
              query = matchQurey[1];
            },
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withOpacity(0.1),
          ),
          Text(
            'Top Results',
            style: GoogleFonts.poppins(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: const Color(0xff8FA1B4),
            ),
          ),
          ListTile(
            title: Text(results[0]),
            onTap: () {
              query = matchQurey[0];
            },
          )
        ],
      ),
    );
  }
}
