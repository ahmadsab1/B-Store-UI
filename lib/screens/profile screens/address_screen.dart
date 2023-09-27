import 'package:b_store_task2/widgets/edit_profile_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  late TextEditingController _nameController;
  late TextEditingController _addressController;
  late TextEditingController _cityController;
  late TextEditingController _zIPCodeController;
  late TextEditingController _mobileNumberController;

  bool _ischecked = false;

  @override
  void initState() {
    _nameController = TextEditingController();
    _addressController = TextEditingController();
    _cityController = TextEditingController();
    _zIPCodeController = TextEditingController();
    _mobileNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _cityController.dispose();
    _zIPCodeController.dispose();
    _mobileNumberController.dispose();
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
        title: const Text('Back'),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color(0xff1B2A3B),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            EditProfileTextField(
              controller: _nameController,
              hint: 'Name',
              textinputtype: TextInputType.text,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Address',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color(0xff1B2A3B),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            EditProfileTextField(
              controller: _addressController,
              hint: 'Address',
              textinputtype: TextInputType.text,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'City',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff1B2A3B),
                        ),
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      EditProfileTextField(
                        controller: _cityController,
                        hint: 'City',
                        textinputtype: TextInputType.text,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ZIP Code',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff1B2A3B),
                        ),
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      EditProfileTextField(
                        controller: _zIPCodeController,
                        hint: 'ZIP Code',
                        textinputtype: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Mobile number',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color(0xff1B2A3B),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            EditProfileTextField(
              controller: _mobileNumberController,
              hint: 'Mobile number',
              textinputtype: TextInputType.number,
            ),
            const SizedBox(
              height: 21,
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: const Color(0xff00BB1A),
              activeColor: Colors.transparent,
              side: BorderSide(
                color: Colors.black.withOpacity(0.1),
              ),
              checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.5),
              ),
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Set as default address',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff1B2A3B),
                ),
              ),
              value: _ischecked,
              onChanged: (bool? value) {
                setState(() {
                  if (value != null) {
                    _ischecked = value;
                  }
                });
              },
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
