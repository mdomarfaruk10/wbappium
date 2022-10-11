import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbappium/Provider/load_data_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<LoadDataProvider>(context, listen: false).getAllCategory();
  }

  @override
  Widget build(BuildContext context) {
    final category = Provider.of<LoadDataProvider>(context);
    return Scaffold(
        body: category.isLoading
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.green,
                ),
              )
            : Center(
                child: Text(
                  "Text: " + category.category.length.toString(),
                  style: TextStyle(color: Colors.green),
                ),
              ));
  }
}
