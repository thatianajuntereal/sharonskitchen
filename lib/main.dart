import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharonskitchen/router/router.gr.dart';
import 'package:sharonskitchen/view_model/pasta_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PastaViewModel())],
      child: PastaOrderApp(),
    ),
  );
}

class PastaOrderApp extends StatelessWidget {
  final _appRouter = AppRouter();

  PastaOrderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Pasta Order App',
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
