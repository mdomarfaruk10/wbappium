import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbappium/Provider/Thame_provider.dart';
import 'package:wbappium/Provider/auth_provider.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:wbappium/Provider/load_data_provider.dart';
import 'package:wbappium/screen/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'LocalNotification/LocalNotification.dart';
import 'LocalNotification/helper_Notification.dart';
void main() async {
  ThemeData? activeTheme;


  WidgetsFlutterBinding.ensureInitialized();
  NotificationApi().InitialiseNotification();
  await firebase_core.Firebase.initializeApp();
  SharedPreferences.getInstance().then((pref) {
   var themeColor= pref.getString("ThemeModee")??"Dark";
   if(themeColor=="Dark"){
     activeTheme=darkTheme;
   }else if(themeColor=="Light"){
     activeTheme=ligtTheme;
   }else if(themeColor=="Green"){
     activeTheme=greenTheme;
   }else{
     activeTheme=SystemMode;
   }
   runApp(MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (context) => AuthProvider()),
       ChangeNotifierProvider(create: (context) => Thame_Changer(activeTheme!)),
       ChangeNotifierProvider(create: (context) => LoadDataProvider()),
     ],
     child: const MyApp(),
   ));

  });

}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // NotificationApi notificationApi =NotificationApi();
  // void initState(){
  //   notificationApi.InitialiseNotification();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final  themeMode = Provider.of<Thame_Changer>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeMode.getTheme,
      home: LocalNotification(),
      // push
    );

  }
}

