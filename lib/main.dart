import 'package:flutter/material.dart';
import 'package:playlist_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';
import 'package:playlist_app/models/playlist_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => PlaylistProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
