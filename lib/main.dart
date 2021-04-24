import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rooknews/constants.dart';

import 'pages/something_went_wrong_page.dart';
import 'pages/loading_page.dart';
import 'pages/splash_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rooknews',
      theme: ThemeData(
        scaffoldBackgroundColor: kBgLisghtColor,
        accentColor: kPrimaryColor,
      ),
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return SomethingWentWrongPage();
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return LoadingPage();
          }

          return SplashPage();
        },
      ),
    );
  }
}