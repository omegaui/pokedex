
import 'package:flutter/cupertino.dart';

const pokeball = "pokeball";
const potion = "potion";
const accessories = "accessories";
const stones = "stones";
const badges = "gym-badges";

class ItemData {
  final String type;
  final String name;
  final String imageUrl;
  final String description;
  final VoidCallback? onTap;

  ItemData({required this.type, required this.name, required this.imageUrl, required this.description, this.onTap});
}

