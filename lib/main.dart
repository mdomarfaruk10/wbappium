import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbappium/Provider/auth_provider.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:wbappium/login_or_registor_sreen/OtpVerification_Email.dart';
import 'package:wbappium/login_or_registor_sreen/login_screen.dart';

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

        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: OtpVerification_Email(),
        ));
  }
}
