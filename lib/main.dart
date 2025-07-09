import 'package:flutter/material.dart';
import 'package:mini_ecommerce/views/login_screen.dart';
import 'package:mini_ecommerce/views/product_list_screen.dart';
import 'package:provider/provider.dart';

import 'controllers/product_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AuthProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Consumer<AuthProvider>(
          builder: (context, auth, _) {
            return auth.isLoggedIn ? const ProductListScreen() : const LoginScreen();
          },
        ),
      ),
    );
  }
}