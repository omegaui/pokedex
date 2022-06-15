
import 'package:flutter/material.dart';
import 'package:pokedex/pages/items/item_data.dart';
import 'package:pokedex/pages/items/item_holder.dart';
import 'package:pokedex/pages/items/pokeballs/pokeballs_view.dart';

class ItemsView extends StatelessWidget{
  const ItemsView({Key? key}) : super(key: key);

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
                  "Available Items",
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
                  "Items help you in your journey in many ways",
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
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    ItemHolder(
                      itemData: ItemData(
                        name: "Pokeballs",
                        description: "Containers in which caught Pokemon resides",
                        imageUrl: "https://img.icons8.com/color/192/undefined/pokebag.png",
                        type: pokeball,
                        onTap: () => {
                          Navigator.push(context, MaterialPageRoute(builder: (builder) => const PokeballsView()))
                        },
                      ),
                    ),
                    ItemHolder(
                      itemData: ItemData(
                        name: "Gym Badges",
                        description: "Each city has a Pokemon Gym, Match and Earn (not implemented)",
                        imageUrl: "https://img.icons8.com/color/192/undefined/star-pokemon.png",
                        type: pokeball,
                      ),
                    ),
                    ItemHolder(
                      itemData: ItemData(
                        name: "Evolution Stones",
                        description: "Some Pokemons only evolve using a Pokemon Stone (not implemented)",
                        imageUrl: "https://img.icons8.com/fluency/192/undefined/pointer.png",
                        type: pokeball,
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
