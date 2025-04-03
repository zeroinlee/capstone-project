import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neck_check/features/auth/auth_page.dart';
import 'package:neck_check/features/camera/camera_page.dart';
import 'package:neck_check/features/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

final GoRouter router = GoRouter(
  initialLocation: '/auth',
  routes: [
    GoRoute(path: '/auth', builder: (context, state) => AuthPage()),
    GoRoute(path: '/home', builder: (context, state) => HomePage()),
    GoRoute(path: '/camera', builder: (context, state) => CameraPage()),
  ],
);
