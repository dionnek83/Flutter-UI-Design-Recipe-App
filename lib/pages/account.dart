import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  AccountState createState() => AccountState();
}

class AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Text(
            "Account",
            style: GoogleFonts.sofia(
                textStyle:
                    const TextStyle(fontSize: 30, color: Color(0xFFFA8072))),
          ),
        ),
      ),
    );
  }
}
