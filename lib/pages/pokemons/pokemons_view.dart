
import 'package:flutter/material.dart';
import 'package:pokedex/pages/pokemons/pokemon_data.dart';
import 'package:pokedex/pages/pokemons/pokemon_holder.dart';
import 'package:pokedex/resource/uixmanager.dart';

class PokemonsView extends StatelessWidget{
  const PokemonsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Material(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Available Pokemons",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(width: 80),
                Text(
                  "Catch More Pokemons to collect their details",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                primary: true,
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      PokemonHolder(
                        pokemonData: PokemonData(
                          image: const NetworkImage("https://img.icons8.com/color/96/undefined/pokemon.png"),
                          viewerImageUrl: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png",
                          name: "Pikachu",
                          description: 'Generates powerful electricity have cheek sacs that are extra soft and super stretchy',
                          extendedDescription: "Don't try to play with him or else he will pour lightening thunder strikes on you until you turn jet-black",
                          type: PokemonType(image: electricityImage, name: electricTypePokemon),
                          homeland: "Outskirts of Palette City",
                        ),
                      ),
                      PokemonHolder(
                        pokemonData: PokemonData(
                          image: const NetworkImage("https://img.icons8.com/color/96/undefined/abra.png"),
                          viewerImageUrl: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/063.png",
                          name: "Abra",
                          description: 'Uses its psychic powers while it sleeps, the contents of Abra’s dreams affect the powers that the Pokemon wields',
                          extendedDescription: "Never opens its eyes, no don't try to wake him up",
                          type: PokemonType(image: psychicImage, name: psychicTypePokemon),
                          homeland: "Palette City",
                        ),
                      ),
                      PokemonHolder(
                        pokemonData: PokemonData(
                          image: const NetworkImage("https://img.icons8.com/color/96/undefined/bullbasaur.png"),
                          viewerImageUrl: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png",
                          name: "Balbasaur",
                          description: 'There is a plant seed on its back right from the day this Pokemon is born, and the seed slowly grows larger',
                          extendedDescription: "Gets angry easily, beware of his poison spores",
                          type: PokemonType(image: grassImage, name: grassTypePokemon),
                          homeland: "Atmos City",
                        ),
                      ),
                      PokemonHolder(
                        pokemonData: PokemonData(
                          image: const NetworkImage("https://img.icons8.com/color/96/undefined/psyduck.png"),
                          viewerImageUrl: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/054.png",
                          name: "Psyduck",
                          description: 'Constantly beset by headaches, if the Pokemon lets its strange power erupt, apparently the pain subsides for a while',
                          extendedDescription: "Cannot even harm an ant, but when the pain of head is gone he can change the entire match with his powers",
                          type: PokemonType(image: waterImage, name: waterTypePokemon),
                          homeland: "Hydro City",
                        ),
                      ),
                      PokemonHolder(
                        pokemonData: PokemonData(
                          image: const NetworkImage("https://img.icons8.com/color/96/undefined/charmander.png"),
                          viewerImageUrl: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png",
                          name: "Charmander",
                          description: 'Has a preference for hot things, when it rains, steam is said to spout from the tip of its tail',
                          extendedDescription: "Looks very cute and kind but as this pokemon evolves even the dragons feel afraid of its personality",
                          type: PokemonType(image: fireImage, name: fireTypePokemon),
                          homeland: "Mantle Bourough",
                        ),
                      ),
                      PokemonHolder(
                        pokemonData: PokemonData(
                          image: const NetworkImage("https://img.icons8.com/color/96/undefined/zubat.png"),
                          viewerImageUrl: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/041.png",
                          name: "Zubat",
                          description: 'Emits ultrasonic waves from its mouth to check its surroundings, even in tight caves, Zubat flies around with skill',
                          extendedDescription: "Always seems to be flying, you won't be able to find his eyes",
                          type: PokemonType(image: airImage, name: airTypePokemon),
                          homeland: "Atmos City",
                        ),
                      ),
                      PokemonHolder(
                        pokemonData: PokemonData(
                          image: const NetworkImage("https://img.icons8.com/color/96/undefined/snorlax.png"),
                          viewerImageUrl: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/143.png",
                          name: "Snorlax",
                          description: 'Not satisfied unless it eats over 880 pounds of food every day, when it is done eating, it goes promptly to sleep',
                          extendedDescription: "Always found sleeping, awake only at the time of fight and eating",
                          type: PokemonType(image: normalImage, name: normalTypePokemon),
                          homeland: "Creo Garden",
                        ),
                      ),
                      PokemonHolder(
                        pokemonData: PokemonData(
                          image: const NetworkImage("https://img.icons8.com/color/96/undefined/eevee.png"),
                          viewerImageUrl: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/133.png",
                          name: "Eevee",
                          description: 'Has the ability to alter the composition of its body to suit its surrounding environment',
                          extendedDescription: "Really quick and handy, Eevee can evolve into any pokemon type using evolution stones",
                          type: PokemonType(image: normalImage, name: normalTypePokemon),
                          homeland: "Atmos City",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

