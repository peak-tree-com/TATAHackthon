import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tatahackathon/Feature/Screen/AuthScreen/Signup.dart';
import 'package:tatahackathon/Feature/Screen/OnBoardScreen/OnBoardScreen.dart';
import 'package:tatahackathon/Feature/Services/AuthServices.dart';
import 'package:tatahackathon/Provider/UserProvider.dart';
import 'package:tatahackathon/route.dart';

void main() async{
  await Hive.initFlutter();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AuthServices authService = AuthServices();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ?SignUpScreen()
          :OnBoardingScreen(),
      onGenerateRoute: (settings) => onGenrate(settings),
    );
  }
}
