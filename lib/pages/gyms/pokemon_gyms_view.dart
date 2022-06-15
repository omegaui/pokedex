

import 'package:flutter/material.dart';

class PokemonGymView extends StatelessWidget{
  const PokemonGymView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(child: Image.network("https://assets.pokemon.com/assets//cms2/img/video-games/_downloads/xy/xy_wallpaper5_1024x768.jpg")),
      ),
    );
  }

}

