
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';


var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  get theme => null;

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder:(context, orientation, deviceType) {
        return MaterialApp (
          theme: theme,
          title: 'booking_hotel_app1',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.routes,
          builder: (context, child) {
            return MediaQuery (
              data: MediaQuery.of(context).copyWith(
                textScaler: const TextScaler.linear(1.0),
              ),
              child: child!,
            );
          },
        );
      }
    );
  }
}