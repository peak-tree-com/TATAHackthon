import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  static const route ='/FavouriteScreen';
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Favourite screen'),
      ),
    );
  }
}