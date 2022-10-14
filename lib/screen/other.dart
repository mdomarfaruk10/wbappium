import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wbappium/Provider/Thame_provider.dart';
import '../helper.dart';
import '../wigdet/Custrom_appbar.dart';
import '../wigdet/Header_text.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
class other extends StatefulWidget {
  const other({Key? key}) : super(key: key);

  @override
  State<other> createState() => _otherState();
}

class _otherState extends State<other> {
  String _selectorColor = "Light";
  List<String> _colors =["Dark","Light","Green","Blue"];
  void onThemeChangeNofifier(String value,Thame_Changer? thame_changer)async{
    if(value=="Dark"){
      thame_changer = thame_changer!.setTheme(darkTheme);
    }
    else if(value=="Light"){
      thame_changer = thame_changer!.setTheme(ligtTheme);
    }
    else if(value=="Green"){
      thame_changer = thame_changer!.setTheme(greenTheme);
    } else {
      thame_changer = thame_changer!.setTheme(blueTheme);
    }
    final prefs =await SharedPreferences.getInstance();
    prefs.setString("ThemeModee", value);
  }
  @override
  Widget build(BuildContext context) {
    final  themeMode = Provider.of<Thame_Changer>(context);
    themeMode.getTheme;
    return Scaffold(
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
                InkWell(
                  onTap: (){
                    _launchURL(Url_launchur_Helper.url_facebook);
                  },
                  child:Custrom_design("Share the app",Icons.share),
                ),
                SizedBox(height: 20,),
                Custrom_design("Logout",Icons.login),
                SizedBox(height: 20,),
                Header_text("Custrom Page"),
                SizedBox(height: 20,),
                Custrom_design("Shop",Icons.wordpress_outlined),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    _launchURL(Url_launchur_Helper.url_facebook);
                  },
                  child: Custrom_design("Privacy Policy",Icons.policy),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    showThemeDialog(themeMode);
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

  void _launchURL(String _url) async{
    if(!await launch(_url))
      throw 'Could not launch $_url';
  }

  void showThemeDialog(Thame_Changer thame_changer){
    showDialog(
        context: context,
        builder: (_) =>StatefulBuilder(
            builder:(BuildContext context,StateSetter setState){
              return AlertDialog(
                content: Container(
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RadioGroup<String?>.builder(
                        groupValue: _selectorColor,
                        onChanged: (val){
                          setState((){
                            _selectorColor = val!;
                          });
                          onThemeChangeNofifier(_selectorColor,thame_changer);
                        },
                        items: _colors,
                        itemBuilder: (item)=>RadioButtonBuilder(item!),
                      ),
                    ],
                  ),
                ),
              );
            }
        )
    );
  }

}
