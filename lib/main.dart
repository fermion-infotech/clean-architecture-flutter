import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_flutter_clean_arch/data/utils/change_notifiers.dart';
import 'package:whatsapp_flutter_clean_arch/data/utils/router.dart';
import 'package:whatsapp_flutter_clean_arch/data/utils/whatsapp_theme.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/di/dependency_injection.dart';

void main() {
  setUpDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: changeNotifiers,
      child: MaterialApp.router(
        title: 'Whatsapp',
        debugShowCheckedModeBanner: false,
        theme: WhatsAppTheme.themeData,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
