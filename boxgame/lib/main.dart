import 'package:boxgame/box-game.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()  {

  Flame.device.fullScreen();
  Flame.device.setOrientation(DeviceOrientation.portraitUp);


  BoxGame game = new BoxGame();
  runApp();

}
 