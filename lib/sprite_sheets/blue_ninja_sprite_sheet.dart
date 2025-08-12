import 'package:bonfire/bonfire.dart';
import 'package:ninja_hijau/constants/globals.dart';

class BlueNinjaSpriteSheet {
  static Future<void> load() async {
    final image = await Flame.images.load(Globals.blueNinjaSpriteSheet);
    spriteSheet = SpriteSheet.fromColumnsAndRows(
      image: image,
      columns: 4,
      rows: 7,
    );
  }

  static late SpriteSheet spriteSheet;
}
