
import 'package:flutter/material.dart';
import 'package:pokedex/resource/uixmanager.dart';

import '../pages/pokemons/pokemon_data.dart';

class PokemonViewer extends StatelessWidget{

  final PokemonData pokemonData;

  const PokemonViewer({Key? key, required this.pokemonData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(colors: [
            Colors.white,
            getPokemonCardBorderColor(pokemonData.type.name),
          ]),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Material(
                    color: Colors.transparent,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      splashColor: Colors.grey.withOpacity(0.5),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Text(
                  pokemonData.name,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Image.network(pokemonData.viewerImageUrl),
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 4,
                              spreadRadius: 4,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image(image: pokemonData.type.image),
                              Text(
                                pokemonData.type.name.toUpperCase(),
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          pokemonData.description,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          pokemonData.extendedDescription,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "${pokemonData.homeland} is the homeland of ${pokemonData.name}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}

