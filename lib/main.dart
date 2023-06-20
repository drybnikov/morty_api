import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_api/di/injection_container.dart';
import 'package:morty_api/home/root_navigator_widget.dart';
import 'package:morty_api/utils/app_bloc_observer.dart';

void main() {
  runZonedGuarded<Future<void>>(
    () async {
      Fimber.plantTree(DebugTree());

      WidgetsFlutterBinding.ensureInitialized();

      configureDependencies();

      Bloc.observer = AppBlocObserver.instance();

      runApp(const MyApp());
    },
    (error, stack) {
      Fimber.e('App init error', ex: error, stacktrace: stack);
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Rick and Morty Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        useMaterial3: true,
      ),
      home: RootNavigatorWidget(),
    );
  }
}
