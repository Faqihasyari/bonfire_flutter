import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:ninja_hijau/constants/globals.dart';
import 'package:ninja_hijau/games/the_green_ninja_game.dart';
import 'package:ninja_hijau/sprite_sheets/sprite_sheets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GreenNinjaSpriteSheet.load();
  await BlueNinjaSpriteSheet.load();
  await OldManSpriteSheet.load();
  await DarkNinjaSpriteSheet.load();

  await FlameAudio.audioCache.loadAll(
    [
      Globals.gameOverSound,
      Globals.powerUpSound,
      Globals.successSound,
      Globals.explosionSound,
      Globals.fireSound,
    ],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TheGreenNinjaGame(),
    );
  }
}
