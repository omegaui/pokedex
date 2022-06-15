

import 'package:flutter/material.dart';
import 'package:pokedex/pages/items/pokeballs/pokeball_card.dart';
import 'package:pokedex/pages/items/pokeballs/pokeball_data.dart';

class PokeballsView extends StatelessWidget{
  const PokeballsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                  "Pokeballs",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                primary: true,
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    PokeballCard(
                      pokeballData: PokeballData(
                        imageUrl: "https://img.icons8.com/color/96/undefined/pokeball-2.png",
                        name: "Normal Pokeball",
                        description : "The universal pokeball to catch them all",
                        extendedDescription: "This is just a very basic pokeball",
                      ),
                    ),
                    PokeballCard(
                      pokeballData: PokeballData(
                        imageUrl: "https://img.icons8.com/color/96/undefined/ultra-ball.png",
                        name: "Ultraball",
                        description : "Highly advanced version of Poke Balls",
                        extendedDescription: "Even more powerful than the Great Balls",
                      ),
                    ),
                    PokeballCard(
                      pokeballData: PokeballData(
                        imageUrl: "https://img.icons8.com/color/96/undefined/superball.png",
                        name: "Greatball",
                        description : "An upgraded version of Poke Balls",
                        extendedDescription: "Used to capture tougher Pokemon",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
