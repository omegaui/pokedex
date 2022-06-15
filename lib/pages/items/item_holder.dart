
import 'package:flutter/material.dart';
import 'package:pokedex/pages/items/item_data.dart';
import 'package:pokedex/resource/uixmanager.dart';

class ItemHolder extends StatefulWidget{

  final ItemData itemData;

  const ItemHolder({Key? key, required this.itemData}) : super(key: key);

  @override
  State<ItemHolder> createState() => _ItemHolderState();
}

class _ItemHolderState extends State<ItemHolder> {

  Color shadowColor = Colors.grey.withOpacity(0.5);

  void mouseEntered(e){
    setState(() => {
      shadowColor = Colors.blue.withOpacity(0.5)
    });
  }

  void mouseExited(e){
    setState(() => {
      shadowColor = Colors.grey.withOpacity(0.5)
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.itemData.onTap,
      child: MouseRegion(
        onEnter: mouseEntered,
        onExit: mouseExited,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: 500,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: shadowColor,
                  blurRadius: 4,
                  spreadRadius: 4,
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                FadeInImage(placeholder: pokeBallImage96, image: NetworkImage(widget.itemData.imageUrl)),
                const SizedBox(height: 10),
                Text(
                  widget.itemData.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  widget.itemData.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
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


