import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:ninja_hijau/constants/globals.dart';

class TheGreenNinjaGame extends StatefulWidget {
  const TheGreenNinjaGame({super.key});

  @override
  State<TheGreenNinjaGame> createState() => _TheGreenNinjaGameState();
}

class _TheGreenNinjaGameState extends State<TheGreenNinjaGame> {
  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      map: WorldMapByTiled(
        WorldMapReader.fromAsset(Globals.mapOne),
        forceTileSize: Vector2(32, 32),
      ),
    );
  }
}
