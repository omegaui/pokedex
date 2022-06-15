
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/components/text_components.dart';

class BigPokeBall extends StatefulWidget{
  const BigPokeBall({Key? key}) : super(key: key);

  @override
  State<BigPokeBall> createState() => _BigPokeBallState();
}

class _BigPokeBallState extends State<BigPokeBall> {

  Color backgroundColor = Colors.white;
  int viewState = 0;

  void mouseEntered(PointerEnterEvent e){
    setState(() {
      backgroundColor = Colors.grey.withOpacity(0.1);
      viewState = 1;
    });
  }

  void mouseExited(PointerExitEvent e){
    setState(() {
      backgroundColor = Colors.white;
      viewState = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: mouseEntered,
      onExit: mouseExited,
      child: Container(
        width: 480,
        height: 480,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(240),
          color: backgroundColor,
        ),
        child: _getView(),
      ),
    );
  }

  Widget _getView(){
    if(viewState == 1){
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://img.icons8.com/color/192/undefined/pokeballs.png"),
            const Text(
              "Just another Pokedex Application written in",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const FlutterLogo(size: 48),
            const SizedBox(height: 10),
            InteractiveText(
              text: "by @omegaui",
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              onTap: () {},
              onEnterStyle: const TextStyle(
                color: Colors.blueAccent,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            InteractiveText(
              text: "All Amazing Icons belong to icons8.com",
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              onTap: () {},
              onEnterStyle: const TextStyle(
                color: Colors.blue,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            InteractiveText(
              text: "All Artwork belongs to pokemon.com",
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              onTap: () {},
              onEnterStyle: const TextStyle(
                color: Colors.blue,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }
    return Image.network("https://img.icons8.com/color/480/undefined/blueteam.png");
  }

}


class PokeBall extends StatelessWidget{

  final ImageProvider pokeBallImage;

  const PokeBall({Key? key, required this.pokeBallImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: pokeBallImage,
    );
  }

}

class OpenPokeBall extends StatelessWidget{
  
  final double opacity;
  
  const OpenPokeBall({Key? key, required this.opacity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Image.network(
        "https://img.icons8.com/color/48/undefined/open-pokeball--v2.png",
      ),
    );
  }
  
}

