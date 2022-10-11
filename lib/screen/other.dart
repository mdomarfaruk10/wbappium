import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbappium/Provider/Thame_provider.dart';

import '../wigdet/Custrom_appbar.dart';
import '../wigdet/Header_text.dart';
class other extends StatefulWidget {
  const other({Key? key}) : super(key: key);

  @override
  State<other> createState() => _otherState();
}

class _otherState extends State<other> {
  @override
  Widget build(BuildContext context) {
    final  themeChanger = Provider.of<Thame_Changer>(context);
    return Scaffold(
      // backgroundColor: Colors.grey[800],
      appBar: Custrom_appbar("Others"),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(40) ,
              topRight: Radius.circular(40),
            ),
          ),
          height:600 ,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(
                top: 40,
                left: 20,
                right: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header_text("Account  setting"),
                SizedBox(height: 10,),
                Custrom_design("My Account",Icons.account_circle_outlined),
                SizedBox(height: 20,),
                Custrom_design("Share the app",Icons.share),
                SizedBox(height: 20,),
                Custrom_design("Logout",Icons.login),
                SizedBox(height: 20,),
                Header_text("Custrom Page"),
                SizedBox(height: 20,),
                Custrom_design("Shop",Icons.wordpress_outlined),
                SizedBox(height: 20,),
                Custrom_design("Privacy Policy",Icons.policy),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    showLoadingDialog(context,themeChanger);
                  },
                  child: Custrom_design("Theme Mode",Icons.dark_mode_outlined),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget Custrom_design(String txt,dynamic icon){
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5.0,
                spreadRadius: 3.0,
                offset: Offset(0,3)
            )
          ]
      ),
      child: ListTile(
        leading: Icon(icon),
        title: Text(txt),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
  void showLoadingDialog(BuildContext context,themeChanger){
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Selection  theme mode'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RadioListTile<ThemeMode>(
                  title: Text("light Mode"),
                  value: ThemeMode.light,
                  groupValue: themeChanger.themeMode,
                  onChanged:themeChanger.setTheme,
                ),
                RadioListTile<ThemeMode>(
                  title: Text("Dark Mode"),
                  value: ThemeMode.dark,
                  groupValue: themeChanger.themeMode,
                  onChanged:themeChanger.setTheme,
                ),
                RadioListTile<ThemeMode>(
                  title: Text("system Mode"),
                  value: ThemeMode.system,
                  groupValue: themeChanger.themeMode,
                  onChanged:
                  themeChanger.setTheme,
                ),
              ],
            ),
          );
        });
  }

}
