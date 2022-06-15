
// ignore_for_file: must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/resource/uixmanager.dart';

class RouteCard extends StatefulWidget{

  String title;
  Gradient gradient;
  Color shadowColor;
  Color hoverColor;
  Image imageWidget;
  VoidCallback? onTap;

  RouteCard({Key? key, this.onTap, required this.title, required this.gradient, required this.shadowColor, required this.hoverColor, required this.imageWidget}) : super(key: key);

  @override
  State<RouteCard> createState() => _RouteCardState();
}

class _RouteCardState extends State<RouteCard> {

  Color shadowColor = Colors.transparent;

  @override
  @protected
  @mustCallSuper
  void initState(){
    shadowColor = widget.shadowColor;
    super.initState();
  }

  void mouseEntered(PointerEnterEvent e){
    setState(() => {
      shadowColor = widget.hoverColor
    });
  }

  void mouseExited(PointerExitEvent e){
    setState(() => {
      shadowColor = widget.shadowColor
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: mouseEntered,
        onExit: mouseExited,
        child: Container(
          width: 150,
          decoration: BoxDecoration(
            gradient: widget.gradient,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: shadowColor,
                blurRadius: 4,
                spreadRadius: 4,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                widget.imageWidget,
              ],
            ),
          ),
        ),
      ),
    );
  }
}


