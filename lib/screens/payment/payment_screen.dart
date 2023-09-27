import 'package:b_store_task2/widgets/edit_profile_textfiled.dart';
import 'package:b_store_task2/widgets/paymant_indiator.dart';
import 'package:b_store_task2/widgets/payment_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String _value = '';
  int _page = 0;
  late TextEditingController _cardholderNameController;
  late TextEditingController _cardnumberController;
  late TextEditingController _cvvcvcController;
  late TextEditingController _expdateController;
  late TextEditingController _expdateController1;
  late PageController _pageController;

  @override
  void initState() {
    _cardholderNameController = TextEditingController();
    _cardnumberController = TextEditingController();
    _cvvcvcController = TextEditingController();
    _expdateController = TextEditingController();
    _expdateController1 = TextEditingController();
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _cardholderNameController.dispose();
    _cardnumberController.dispose();
    _cvvcvcController.dispose();
    _expdateController.dispose();
    _expdateController1.dispose();
    _pageController.dispose();
    super.dispose();
  }

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
                  value: 'Make default',
                  child: Row(
                    children: [
                      Text(
                        'Make default',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: const Color(0xff1B2A3B),
                        ),
                      ),
                      const Spacer(),
                      _value == 'Make default'
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
                  onTap: () => _removeCard(),
                  height: 37,
                  value: 'Remove Card',
                  child: Text(
                    'Remove Card',
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
      body: Column(
        children: [
          SizedBox(
            height: 170,
            width: 285,
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _page = value;
                });
              },
              children: const [
                PaymentWidget(),
                PaymentWidget(),
                PaymentWidget(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PaymentIndiator(isSelected: _page == 0),
              PaymentIndiator(isSelected: _page == 1),
              PaymentIndiator(isSelected: _page == 2),
            ],
          ),
          const SizedBox(
            height: 27,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Cardholder Name',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color(0xff1B2A3B),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                EditProfileTextField(
                    controller: _cardholderNameController,
                    hint: 'Cardholder Name',
                    textinputtype: TextInputType.text),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Card Number',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color(0xff1B2A3B),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                EditProfileTextField(
                    controller: _cardnumberController,
                    hint: 'Card Number',
                    textinputtype: TextInputType.number),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "cvv\\cvc",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color(0xff1B2A3B),
                            ),
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          EditProfileTextField(
                            controller: _cvvcvcController,
                            hint: '000',
                            textinputtype: TextInputType.number,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Exp.Date",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color(0xff1B2A3B),
                            ),
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: EditProfileTextField(
                                  controller: _expdateController,
                                  hint: '00',
                                  textinputtype: TextInputType.number,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: EditProfileTextField(
                                  controller: _expdateController1,
                                  hint: '00',
                                  textinputtype: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                ElevatedButton(
                    onPressed: () => Navigator.pushReplacementNamed(
                        context, '/order_placed_screen'),
                    child: const Text(
                      'Submit Order',
                    )),
              ],
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }

  void _removeCard() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Text(
            'Are you sure to remove\nthis card?',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xff1B2A3B),
            ),
          ),
          actions: [
            Row(
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff586BCA)),
                      )),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Remove',
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
