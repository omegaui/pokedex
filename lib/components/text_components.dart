
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class InteractiveText extends StatefulWidget{
  
  final String text;
  final TextStyle style;
  final TextStyle onEnterStyle;
  final Function(PointerEnterEvent)? onEnter;
  final Function(PointerExitEvent)? onExit;
  final VoidCallback onTap;

  const InteractiveText({Key? key, required this.text, required this.style, this.onEnter, this.onExit, required this.onTap, required this.onEnterStyle}) : super(key: key);

  @override
  State<InteractiveText> createState() => _InteractiveTextState();
}

class _InteractiveTextState extends State<InteractiveText> {

  TextStyle currentStyle = const TextStyle();

  @override
  @protected
  @mustCallSuper
  void initState(){
    currentStyle = widget.style;
    super.initState();
  }

  void mouseEntered(PointerEnterEvent e){
    setState(() {
      currentStyle = widget.onEnterStyle;
      widget.onEnter?.call(e);
    });
  }

  void mouseExited(PointerExitEvent e){
    setState(() {
      currentStyle = widget.style;
      widget.onExit?.call(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: mouseEntered,
      onExit: mouseExited,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Text(
          widget.text,
          style: currentStyle,
        ),
      ),
    );
  }
}
