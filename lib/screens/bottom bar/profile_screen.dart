import 'package:b_store_task2/widgets/profile_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: Column(
        children: [
          const Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/Profile Picture.png'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Tanya Robinson',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(39),
              child: Column(
                children: [
                  ProfileListWidget(
                    ontap: () {},
                    title: 'Notifications',
                    leading: Icons.notifications,
                    trailing: Icons.arrow_forward_ios_rounded,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.1),
                    height: 15,
                  ),
                  ProfileListWidget(
                    ontap: () {},
                    title: 'My Orders',
                    leading: Icons.list_alt,
                    trailing: Icons.arrow_forward_ios_rounded,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.1),
                    height: 20,
                  ),
                  ProfileListWidget(
                    ontap: () =>
                        Navigator.pushNamed(context, '/address_screen'),
                    title: 'Address',
                    leading: Icons.near_me,
                    trailing: Icons.arrow_forward_ios_rounded,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.1),
                    height: 15,
                  ),
                  ProfileListWidget(
                    ontap: () =>
                        Navigator.pushNamed(context, '/payment_screen'),
                    title: 'Payment',
                    leading: Icons.payment,
                    trailing: Icons.arrow_forward_ios_rounded,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.1),
                    height: 15,
                  ),
                  ProfileListWidget(
                    ontap: () {},
                    title: 'Favourites',
                    leading: Icons.favorite,
                    trailing: Icons.arrow_forward_ios_rounded,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.1),
                    height: 15,
                  ),
                  ProfileListWidget(
                    ontap: () {},
                    title: 'Settings',
                    leading: Icons.settings,
                    trailing: Icons.arrow_forward_ios_rounded,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
