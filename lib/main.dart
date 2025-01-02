import 'package:bespoke/routing/route_config.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( BeSpokeApp());
}
class BeSpokeApp extends StatelessWidget {
   BeSpokeApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
    routerConfig: _appRouter.config(),
    );
  }
}

