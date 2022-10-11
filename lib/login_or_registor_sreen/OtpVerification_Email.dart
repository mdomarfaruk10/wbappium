import 'package:flutter/material.dart';
import 'package:wbappium/wigdet/from_decoration.dart';
import 'package:email_auth/email_auth.dart';

import '../wigdet/Custrom_button.dart';
class OtpVerification_Email extends StatefulWidget {
  const OtpVerification_Email({Key? key}) : super(key: key);

  @override
  State<OtpVerification_Email> createState() => _OtpVerification_EmailState();
}

class _OtpVerification_EmailState extends State<OtpVerification_Email> {
  EmailAuth? emailAuth;
  bool submitValid=false;
  @override
  void initState() {
    super.initState();
    // Initialize the package
    emailAuth = new EmailAuth(sessionName: "Sample session",);

    /// Configuring the remote server
    // emailAuth?.config(remoteServerConfiguration);
  }
  @override
  final TextEditingController _emailcontroller=TextEditingController();
  final TextEditingController _otpcontroller=TextEditingController();

  void sendOtp() async {
    EmailAuth(sessionName: "Sample session",);
    var result = await emailAuth!.sendOtp(
        recipientMail: _emailcontroller.text, otpLength: 5);
    if (result) {
      print("OTP send");
      print(_emailcontroller);
      setState(() {
        submitValid = true;
      });
    }else{
      print("we could not send otp");
    }
  }
  void verify() {
    var res=emailAuth?.validateOtp(
        recipientMail: _emailcontroller.value.text,
        userOtp: _otpcontroller.value.text);
    if(res!){
      print("verified");
    }else{
      print("invalid");
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OtpVerification_Email"),
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          TextFormField(maxLines: 1,
            keyboardType: TextInputType.text,
            decoration: FormDecoration.copyWith(
              labelText: "Email",

            ),
            validator: (value){
              if(value!.isEmpty){
                return "Please Fill All Field";
              }
              return null;
            },
            controller:_emailcontroller ,
            // onChanged: (value){
            //   setState(() {
            //     // _emailcontroller =value;
            //   });
            // },
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: sendOtp,
            child: Custrom_button("Otp send"),
          ),
          SizedBox(height: 10),
          TextFormField(maxLines: 1,
            keyboardType: TextInputType.text,
            decoration: FormDecoration.copyWith(
              labelText: "OPT verification",

            ),
            validator: (value){
              if(value!.isEmpty){
                return "Please Fill All Field";
              }
              return null;
            },
              controller: _otpcontroller,
            // onChanged: (value){
            //   setState(() {
            //     // user.usersModel.uphone =value;
            //
            //   });
            // },
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: verify,
            child: Custrom_button("verifyOTP"),
          ),

        ],
      ),
    );
  }
}
