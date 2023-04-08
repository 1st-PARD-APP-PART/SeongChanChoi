import 'package:clone_homework_seongchanchoi/screens/detail_page.dart';
import 'package:clone_homework_seongchanchoi/screens/edit_profile_page.dart';
import 'package:clone_homework_seongchanchoi/screens/home_page.dart';
import 'package:clone_homework_seongchanchoi/screens/profile_page.dart';
import 'package:clone_homework_seongchanchoi/screens/sign_in_page.dart';
import 'package:clone_homework_seongchanchoi/screens/sign_up_page.dart';
import 'package:clone_homework_seongchanchoi/screens/upload_page.dart';
import 'package:clone_homework_seongchanchoi/screens/welcome_page.dart';
import 'package:clone_homework_seongchanchoi/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CloneDaangnApp extends StatelessWidget {
  const CloneDaangnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daangn Market',
      theme: Themes.regularTheme,
      home: WelcomePage(),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomePage(),
        '/signUp': (context) => SignUpPage(),
        '/signIn': (context) => SignInPage(),
        '/home': (context) => HomePage(),
        '/upload': (context) => UploadPage(),
        '/profile': (context) => ProfilePage(),
        '/editProfile': (context) => EditProfilePage(),
        '/detail': (context) => DetailPage(),
        // '/chat': (context) => ChatPage(),
        // '/myBuy':(context) => MyBuyPage(),
        // '/mySell':(context) => MySellPage(),
        // '/myFavorite':(context) => MyFavoritePage(),
      },
    );
  }
}
