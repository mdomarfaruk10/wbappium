import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbappium/Provider/Thame_provider.dart';
import 'package:wbappium/Provider/auth_provider.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:wbappium/Provider/load_data_provider.dart';
import 'package:wbappium/home_page.dart';
import 'package:wbappium/screen/splash_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebase_core.Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

        providers: [
          ChangeNotifierProvider(create: (context) => AuthProvider()),
          ChangeNotifierProvider(create: (context) => Thame_Changer()),
          ChangeNotifierProvider(create: (context) => LoadDataProvider()),
        ],
        child:Builder(builder: (BuildContext context){
          final  themeChanger = Provider.of<Thame_Changer>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch:Colors.grey,
                backgroundColor: Colors.grey[800],
                appBarTheme: AppBarTheme(
                    backgroundColor: Colors.grey[800]
                ),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  unselectedItemColor:Colors.black ,
                  selectedItemColor: Colors.blue,
                )

            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primarySwatch: Colors.yellow,
                backgroundColor: Colors.white,
              primaryColor: Colors.white,
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.red
                ),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                unselectedItemColor:Colors.white ,
                selectedItemColor: Colors.blue,
              )
            ),
            home: Home_page(),
            // push
          );
        }) ,

    
    );
  }
}
