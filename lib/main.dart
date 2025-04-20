import 'package:flutter/material.dart';
import 'package:flutter_auth_login_api/bloc/login_bloc.dart';
import 'package:flutter_auth_login_api/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => LoginBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoute.login.name,
        routes: routes,
      ),
    );
  }
}
