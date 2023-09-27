import 'package:b_store_task2/screens/Onboarding/onboarding_screen.dart';
import 'package:b_store_task2/screens/account/recover_account_screen.dart';
import 'package:b_store_task2/screens/account/sign_in_screen.dart';
import 'package:b_store_task2/screens/account/sign_up_screen.dart';
import 'package:b_store_task2/screens/bottom%20bar/bottom_bar_screen.dart';
import 'package:b_store_task2/screens/payment/empty_cart_screen.dart';
import 'package:b_store_task2/screens/payment/order_placed_screen.dart';
import 'package:b_store_task2/screens/payment/payment_screen.dart';
import 'package:b_store_task2/screens/product_details/product_details_screen.dart';
import 'package:b_store_task2/screens/profile%20screens/address_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffFAFAFA),
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: const Color(0xff586BCA),
          ),
          iconTheme: const IconThemeData(
            color: Color(0xff586BCA),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            backgroundColor: const Color(0xff586BCA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            textStyle: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/onboarding_screen',
      routes: {
        '/onboarding_screen': (context) => const OnboardingScreen(),
        '/sign_up_screen': (context) => const SignUpScreen(),
        '/sign_in_screen': (context) => const SignInScreen(),
        '/recover_account_screen': (context) => const RecoverAccountScreen(),
        '/bottom_bar_screen': (context) => const BottomBarScreen(),
        '/product_details_screen': (context) => const ProductDetailsScreen(),
        '/address_screen': (context) => const AddressScreen(),
        '/payment_screen': (context) => const PaymentScreen(),
        '/order_placed_screen': (context) => const OrderPlacedScreen(),
        '/empty_cart_screen': (context) => const EmptyCartScreen(),
      },
    );
  }
}
