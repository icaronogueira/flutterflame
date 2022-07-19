import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/image_composition.dart';
import 'package:flutter/material.dart' hide Image;

void main() {
  print("1. Load the GameWidget with the runApp");
  runApp(GameWidget(game: ChickenGame()));
}

class ChickenGame extends FlameGame {

  double chickenScaleFactor = 3.0;

  @override
  Future<void>? onLoad() async{
    // TODO: implement onLoad
    await super.onLoad();
    print("2. load the assets for the game");
    Image  chickenImage = await images.load("chicken.png");
    SpriteComponent chickenSprite  = SpriteComponent.fromImage(chickenImage, srcSize: Vector2(32,34))..size = Vector2(32,34) * chickenScaleFactor;
    add(chickenSprite);
  }

}
