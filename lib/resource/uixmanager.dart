
import 'package:flutter/material.dart';
import 'package:pokedex/pages/pokemons/pokemon_data.dart';

ImageProvider pokeBallImage24 = const NetworkImage("https://img.icons8.com/color/24/undefined/pokeball-2.png");
ImageProvider pokeBallImage48 = const NetworkImage("https://img.icons8.com/color/48/undefined/pokeball-2.png");
ImageProvider pokeBallImage96 = const NetworkImage("https://img.icons8.com/color/96/undefined/pokeball-2.png");

ImageProvider electricityImage = const NetworkImage("https://img.icons8.com/external-others-amoghdesign/48/undefined/external-bolt-multimedia-flat-30px-others-amoghdesign.png");
ImageProvider fireImage = const NetworkImage("https://img.icons8.com/color/48/undefined/fire-element--v1.png");
ImageProvider waterImage = const NetworkImage("https://img.icons8.com/emoji/48/undefined/sweat-droplets.png");
ImageProvider psychicImage = const NetworkImage("https://img.icons8.com/external-flaticons-flat-flat-icons/48/undefined/external-telekinesis-the-future-flaticons-flat-flat-icons.png");
ImageProvider airImage = const NetworkImage("https://img.icons8.com/fluency/48/undefined/air-element.png");
ImageProvider grassImage = const NetworkImage("https://img.icons8.com/emoji/48/undefined/fallen-leaf.png");
ImageProvider normalImage = const NetworkImage("https://img.icons8.com/external-basicons-color-danil-polshin/48/undefined/external-space-space-basicons-color-danil-polshin-11.png");


List<Color> getPokemonCardColors(String pokemonType){
  if(pokemonType == grassTypePokemon) {
    return [
      Colors.green.shade200,
      Colors.green.shade300
    ];
  }
  else if(pokemonType == electricTypePokemon){
    return [
      Colors.amber,
      Colors.yellow.shade300,
    ];
  }
  else if(pokemonType == psychicTypePokemon){
    return [
      Colors.brown.shade200,
      Colors.yellow.shade600,
    ];
  }
  else if(pokemonType == waterTypePokemon){
    return [
      Colors.blue.shade200,
      Colors.blueAccent,
    ];
  }
  else if(pokemonType == fireTypePokemon){
    return [
      Colors.orange.shade600,
      Colors.red.shade300,
    ];
  }
  else if(pokemonType == airTypePokemon){
    return [
      Colors.grey.shade200,
      Colors.grey.shade400,
    ];
  }
  return [
    Colors.grey.shade300,
    Colors.white,
  ];
}

Color getPokemonCardBorderColor(String pokemonType){
  return getPokemonCardColors(pokemonType).first.withOpacity(0.5);
}




