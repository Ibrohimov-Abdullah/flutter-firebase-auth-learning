import 'package:first_auth_with_firebase/pages/home_page.dart';
import 'package:first_auth_with_firebase/pages/register_page.dart';
import 'package:first_auth_with_firebase/setup.dart';
import 'package:first_auth_with_firebase/widgets/shared_cheking.dart';
import 'package:flutter/material.dart';


void main() async{
  await setUp();
  bool isLoading = await getLoginState();
  runApp(App(isLoggedIn: isLoading,));
}

class App extends StatelessWidget {
  final bool isLoggedIn;
  const App({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLoggedIn ? const HomePage() : const RegisterPage(),
    );
  }
}
