import 'package:clone_homework_seongchanchoi/services/app.dart';
import 'package:clone_homework_seongchanchoi/services/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ApplicationState(),
      child: CloneDaangnApp(),
    ),
  );
}
