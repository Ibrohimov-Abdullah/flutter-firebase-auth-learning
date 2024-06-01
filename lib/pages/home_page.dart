import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_auth_with_firebase/pages/register_page.dart';
import 'package:first_auth_with_firebase/service/auth_service.dart';
import 'package:first_auth_with_firebase/widgets/util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage",style: TextStyle(fontWeight: FontWeight.w800),),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              MaterialButton(
                onPressed: ()async{
                  await AuthService.logoutAccount();
                  Utils.fireSnackBar("You logout successfully", context);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
                },
                child: const Row(
                  children: [
                    Icon(Icons.logout),
                    SizedBox(width: 10,),
                    Text("Log-out"),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              MaterialButton(
                onPressed: ()async{
                  await AuthService.deleteAccount();
                  Utils.fireSnackBar("You Delete account successfully", context);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
                },
                child: const Row(
                  children: [
                    Icon(Icons.delete),
                    SizedBox(width: 10,),
                    Text("Delete account"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25),
          child: Text("Welcome to Home Page")
        ),
      ),
    );
  }
}
