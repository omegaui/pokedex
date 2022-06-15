
import 'package:flutter/material.dart';
import 'package:pokedex/components/pokeball_holders.dart';
import 'package:pokedex/components/pokemon_viewer.dart';
import 'package:pokedex/pages/pokemons/pokemon_data.dart';
import 'package:pokedex/resource/uixmanager.dart';

class PokemonHolder extends StatefulWidget{

  final PokemonData pokemonData;

  const PokemonHolder({Key? key, required this.pokemonData}) : super(key: key);

  @override
  State<PokemonHolder> createState() => _PokemonHolderState();
}

class _PokemonHolderState extends State<PokemonHolder> {
  
  Color borderShadowColor = Colors.white;

  @override
  @protected
  @mustCallSuper
  void initState(){
    borderShadowColor = getPokemonCardBorderColor(widget.pokemonData.type.name);
    super.initState();
  }
  
  void mouseEntered(e){
    setState(() {
      borderShadowColor = Colors.grey.withOpacity(0.5);
    });
  }
  
  void mouseExited(e){
    setState(() {
      borderShadowColor = getPokemonCardBorderColor(widget.pokemonData.type.name);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (builder) => PokemonViewer(pokemonData: widget.pokemonData)));
      },
      child: MouseRegion(
        onEnter: mouseEntered,
        onExit: mouseExited,
        child: Container(
          width: 350,
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: getPokemonCardColors(widget.pokemonData.type.name)),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: borderShadowColor,
                blurRadius: 4,
                spreadRadius: 4,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Image(image: widget.pokemonData.type.image),
                    ),
                    const Align(alignment: Alignment.bottomRight, child: OpenPokeBall(opacity: 0.3)),
                    Align(alignment: Alignment.center, child: Image(image: widget.pokemonData.image)),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  widget.pokemonData.name,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.pokemonData.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

