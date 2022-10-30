import 'package:books/provider/books_provider.dart';
import 'package:books/provider/theme_provider.dart';
import 'package:books/screens/home_screen.dart';

import 'package:books/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => AppNotifier())
        /*ChangeNotifierProvider(
          create: (_) => MoviesProvider(),
          lazy: false,
        ),*/
      ],
      child: PMSNApp(),
    );
  }
}

class PMSNApp extends StatelessWidget {
  const PMSNApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Books',
      home: const SplashScreen(),
      
      routes: {
        '/home': (BuildContext context) => HomeScreen(),
        
      },
    );
  }
}
