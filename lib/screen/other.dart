import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbappium/Provider/Thame_provider.dart';

import '../wigdet/Custrom_appbar.dart';
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
                Text("Account  setting"),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      // color: Colors.white,
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
                    leading: Icon(Icons.account_circle_outlined),
                    title: Text("My Account"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),

                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      // color: Colors.white,
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
                    leading: Icon(Icons.share),
                    title: Text("Share the app"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),

                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      // color: Colors.white,
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
                    leading: Icon(Icons.login),
                    title: Text("Logout"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),

                ),
                SizedBox(height: 20,),
                Text("Account  setting"),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      // color: Colors.white,
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
                    leading: Icon(Icons.wordpress_outlined),
                    title: Text("Shop"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),

                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      // color: Colors.white,
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
                    leading: Icon(Icons.wordpress_outlined),
                    title: Text("Privacy Policy"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),

                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    showLoadingDialog(themeChanger);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        // color: Colors.white,
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
                      leading: Icon(Icons.wordpress_outlined),
                      title: Text("Refund and Returns Policy"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
  void showLoadingDialog( themeChanger) {
    showDialog(

      // barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(

            title: const Text('Selection  theme mode'),
            content: Column(

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
