import 'package:flutter/material.dart';

import 'helper_Notification.dart';
class LocalNotification extends StatefulWidget {
  const LocalNotification({Key? key}) : super(key: key);

  @override
  State<LocalNotification> createState() => _LocalNotificationState();
}

class _LocalNotificationState extends State<LocalNotification> {
  NotificationApi notificationApi =NotificationApi();
  void initState(){
    notificationApi;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Notification"),
      ),
      body: Center(
        child: Column(
          children: [
          IconButton(
              onPressed: (){
                notificationApi.sendNotification("this is a title ", "This is a body");
          },
              icon: Icon(Icons.notifications_none_rounded))
          ],
        ),
      ),
    );
  }
}
