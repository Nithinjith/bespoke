import 'package:bespoke/firebase_options.dart';
import 'package:bespoke/routing/route_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/utils/theme_utils.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Allow only portrait up orientation
  ]).then((_) {
    runApp(ProviderScope(child: BeSpokeApp()));
  });
}

class BeSpokeApp extends StatelessWidget {
  BeSpokeApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: lightTheme,
    );
  }
}
