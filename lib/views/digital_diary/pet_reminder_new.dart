//
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:rxdart/rxdart.dart';
// import 'package:timezone/data/latest.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;
//
// class LocalNotification{
//   static final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
//   static final onClickNotification  = BehaviorSubject<String>();
//   // on tap of any notification
//   static void onNotificationTap(NotificationResponse notificationResponse ){
//     onClickNotification.add(notificationResponse.payload!);
//   }
//
//   // initialize the local notification
//   static Future init() async {
//     // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
//     const AndroidInitializationSettings initializationSettingsAndroid =
//     AndroidInitializationSettings('@mipmap/launcher_icon');
//     // const AndroidInitializationSettings initializationSettingsAndroid =
//     // AndroidInitializationSettings('logo.png');
//     final DarwinInitializationSettings initializationSettingsDarwin =
//     DarwinInitializationSettings(
//       requestAlertPermission: true,
//         requestBadgePermission: true,
//         requestSoundPermission: true,
//         onDidReceiveLocalNotification: (id, title, body, payload) => null);
//             final LinuxInitializationSettings initializationSettingsLinux =
//     const LinuxInitializationSettings(
//         defaultActionName: 'Open notification');
//     final InitializationSettings initializationSettings = InitializationSettings(
//         android: initializationSettingsAndroid,
//         iOS: initializationSettingsDarwin,
//         linux: initializationSettingsLinux);
//     _flutterLocalNotificationsPlugin.initialize(initializationSettings,
//         onDidReceiveNotificationResponse: onNotificationTap,
//         onDidReceiveBackgroundNotificationResponse: onNotificationTap
//     );
//
//     tz.initializeTimeZones();
//
//   }
//
//   // show a simple notification
//   static Future showSimpleNotification(
//       {required String title,
//         required String body,
//         // required String payload,
//       }
//       ) async {
//     const AndroidNotificationDetails androidNotificationDetails =
//     AndroidNotificationDetails(
//         'your channel id',
//         'your channel name',
//         channelDescription: 'your channel description',
//         importance: Importance.max,
//         priority: Priority.high,
//         ticker: 'ticker');
//     const NotificationDetails notificationDetails =
//     NotificationDetails(android: androidNotificationDetails);
//     await _flutterLocalNotificationsPlugin.show(
//         0, title, body, notificationDetails,
//         payload: 'payload');
//   }
//
// // To show periodic notification at regular interval
//
//   static Future showPeriodicNotification ({required String title,
//     required String body,
//     // required String payload,
//   }) async {
//     const AndroidNotificationDetails androidNotificationDetails =
//     AndroidNotificationDetails(
//         'channel 2',
//         'your channel name',
//         channelDescription: 'your channel description',
//         importance: Importance.max,
//         priority: Priority.high,
//         ticker: 'ticker');
//     const NotificationDetails notificationDetails =
//     NotificationDetails(android: androidNotificationDetails);
//     await _flutterLocalNotificationsPlugin.periodicallyShow(
//         1,
//         title,
//         body,
//         RepeatInterval.everyMinute,
//         notificationDetails);
//   }
//
//   // to  schedule a local notification
//   static Future showScheduleNotification ({
//     int id = 3,
//     required String title,
//     required String body,
//     required DateTime scheduledNotificationDateTime,
//     // required String payload,
//   }) async {
//     tz.initializeTimeZones();
//     var localTime = tz.local;
//     tz.TZDateTime.now(localTime).add(const Duration(seconds: 5));
//     // const NotificationDetails(
//     // android: AndroidNotificationDetails(
//     //
//     // 'channel 3',
//     // 'your channel name',
//     // channelDescription: 'your channel description',
//     // importance: Importance.max,
//     // priority: Priority.high,
//     // ticker: 'ticker'
//     // )
//     // );
//     return _flutterLocalNotificationsPlugin.zonedSchedule(
//       3,
//       title,
//       body,
//       // tz.TZDateTime.now(tz.local).add( Duration(seconds: 5)),
//       await tz.TZDateTime.from(
//         scheduledNotificationDateTime,
//         tz.local,
//       ),
//
//
//       const NotificationDetails(
//           android: AndroidNotificationDetails(
//               'channel 3',
//               'your channel name',
//               channelDescription: 'your channel description',
//               importance: Importance.max,
//               priority: Priority.high,
//               ticker: 'ticker'
//           )),
//       androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
//       uiLocalNotificationDateInterpretation:
//       UILocalNotificationDateInterpretation.absoluteTime,
//       androidAllowWhileIdle:true, // To show notification even when the app is closed
//     );
//
//   }
// }
//
