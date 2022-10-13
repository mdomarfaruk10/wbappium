import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wbappium/home_page.dart';

class Verify_Email_address extends StatefulWidget {
  const Verify_Email_address({Key? key}) : super(key: key);

  @override
  State<Verify_Email_address> createState() => _Verify_Email_addressState();
}

final _auth = FirebaseAuth.instance;
User? user;
Timer? timer;

class _Verify_Email_addressState extends State<Verify_Email_address> {
  @override
  void initState() {
    super.initState();
    user = _auth.currentUser;
    try {
      user!.sendEmailVerification();
    } catch (e) {
      print("An error occured while trying to send email verification");
      print(e);
    }
    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      checkEmailVerifid();
    });
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("Please verfy your Email")],
      ),
    );
  }

  Future<void> checkEmailVerifid() async {
    User? user = FirebaseAuth.instance.currentUser;
    await user!.reload();
    if (user.emailVerified) {
      timer!.cancel();
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => Home_page()));
    }
  }
}
