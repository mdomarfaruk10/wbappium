import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationApi{
   final FlutterLocalNotificationsPlugin _notification = FlutterLocalNotificationsPlugin();
   final AndroidInitializationSettings _androidInitializationSettings=
   AndroidInitializationSettings('mipmap/ic_launcher');


   Future InitialiseNotification()async{
     InitializationSettings _initializationSettings=
         InitializationSettings(
           android:_androidInitializationSettings,
         );
      _notification.initialize(_initializationSettings);
   }
 Future sendNotification(String title,String body)async {
     AndroidNotificationDetails androidNotificationDetails =
     AndroidNotificationDetails(
         "channelId",
         " channelNam",
       importance: Importance.max,
       priority: Priority.high,
     );
     NotificationDetails notificationDetails =NotificationDetails(
       android: androidNotificationDetails,
     );
   await _notification.show(
       0,
       title,
       body,
       notificationDetails
   );
 }
}