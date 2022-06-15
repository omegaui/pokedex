import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/components/pokeball_holders.dart';
import 'package:pokedex/components/route_cards.dart';
import 'package:pokedex/pages/gyms/pokemon_gyms_view.dart';
import 'package:pokedex/pages/items/items_view.dart';
import 'package:pokedex/pages/pokemons/pokemons_view.dart';
import 'package:pokedex/resource/uixmanager.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ContentPane(),
      ),
    );
  }

}

class ContentPane extends StatelessWidget{
  const ContentPane({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const BigPokeBall(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PokeBall(pokeBallImage: pokeBallImage48),
                    Text(
                      "Pokedex",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    PokeBall(pokeBallImage: pokeBallImage48),
                  ],
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RouteCard(
                        title: "Pokemons",
                        gradient: const LinearGradient(colors: [Colors.deepPurpleAccent, Colors.blueAccent]),
                        shadowColor: Colors.blue.withOpacity(0.5),
                        hoverColor: Colors.white,
                        imageWidget: Image.network("https://img.icons8.com/cute-clipart/64/undefined/pokemon.png"),
                        onTap: () => {
                          Navigator.push(context, MaterialPageRoute(builder: (builder) => const PokemonsView()))
                        },
                      ),
                      const SizedBox(width: 20),
                      RouteCard(
                        title: "Items",
                        gradient: const LinearGradient(colors: [Colors.orange, Colors.amber]),
                        shadowColor: Colors.amberAccent.withOpacity(0.5),
                        hoverColor: Colors.white,
                        imageWidget: Image.network("https://img.icons8.com/cute-clipart/64/undefined/backpack.png"),
                        onTap: () => {
                          Navigator.push(context, MaterialPageRoute(builder: (builder) => const ItemsView()))
                        },
                      ),
                      const SizedBox(width: 20),
                      RouteCard(
                        title: "Pokemon Gyms",
                        gradient: LinearGradient(colors: [Colors.red, Colors.orange.shade800]),
                        shadowColor: Colors.green.withOpacity(0.5),
                        hoverColor: Colors.white,
                        imageWidget: Image.network("https://img.icons8.com/cute-clipart/64/undefined/floating-island-beach.png"),
                        onTap: () => {
                          Navigator.push(context, MaterialPageRoute(builder: (builder) => const PokemonGymView()))
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}


