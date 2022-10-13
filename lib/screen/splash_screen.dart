import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:wbappium/Provider/load_data_provider.dart';
import 'package:wbappium/home_page.dart';


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

        body:category.isLoading? Center(
              child: TextLiquidFill(
                text: 'WPAPPMIUM',
                waveColor: Colors.blueAccent,
                boxBackgroundColor: Colors.pinkAccent,
                textStyle: TextStyle(
                  fontSize: 55.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Horizon',
                ),
                boxHeight: 780,
              )
            ):function(category.category),
    );
    //update
  }

   function(category){
    SchedulerBinding.instance.addPostFrameCallback((_) {
      // add your code here.
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Home_page(category: category,)));
    });
  }
}