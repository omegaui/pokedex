

import 'package:flutter/material.dart';

const grassTypePokemon = "grass";
const normalTypePokemon = "normal";
const electricTypePokemon = "electric";
const waterTypePokemon = "water";
const fireTypePokemon = "fire";
const airTypePokemon = "air";
const psychicTypePokemon = "psychic";

class PokemonData {
  final ImageProvider image;
  final String viewerImageUrl;
  final String name;
  final PokemonType type;
  final String homeland;
  final String description;
  final String extendedDescription;

  const PokemonData({required this.image, required this.viewerImageUrl, required this.description, required this.extendedDescription, required this.type, required this.homeland, required this.name});

}

class PokemonType {
  final ImageProvider image;
  final String name;

  const PokemonType({required this.image, required this.name});
}



