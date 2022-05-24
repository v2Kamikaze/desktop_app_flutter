import 'package:flutter/material.dart';
import 'package:windows_app/home_page.dart';
import 'package:window_manager/window_manager.dart';

import 'colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = WindowOptions(
    minimumSize: const Size(480, 853),
    maximumSize: const Size(480, 853),
    center: true,
    titleBarStyle: TitleBarStyle.normal,
    alwaysOnTop: false,
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Windows App',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: backgroundPurple,
        ),
      ),
    );
  }
}
