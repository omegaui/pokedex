
import 'package:flutter/material.dart';
import 'package:pokedex/pages/items/pokeballs/pokeball_data.dart';

class PokeballCard extends StatelessWidget{
  final PokeballData pokeballData;

  const PokeballCard({Key? key, required this.pokeballData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 4,
            spreadRadius: 4,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            FadeInImage(
              placeholder: const NetworkImage("https://img.icons8.com/color/96/undefined/open-pokeball--v2.png"),
              image: NetworkImage(pokeballData.imageUrl),
            ),
            const SizedBox(height: 10),
            Text(
              pokeballData.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              pokeballData.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              pokeballData.extendedDescription,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

}
