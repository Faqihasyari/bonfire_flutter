import 'package:bonfire/bonfire.dart';

class CollisionConfigs {
  CollisionConfigs._();

  static List<ShapeHitbox> playerCollisionConfig() => [
        CircleHitbox(
          radius: 21.5,
          position: Vector2(12.5, 0),
        ),
      ];

  static List<ShapeHitbox> projectileCollisionConfig({required double width}) => [
        RectangleHitbox(
          size: Vector2.all(width / 2),
          position: Vector2(width * 0.25, width * 0.25),
        ),
      ];
}
