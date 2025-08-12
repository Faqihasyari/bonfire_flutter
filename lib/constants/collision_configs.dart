import 'package:bonfire/bonfire.dart';

class CollisionConfigs {
  CollisionConfigs._();

  /// Collision untuk Player
  static List<ShapeHitbox> playerCollisionConfig() => [
        CircleHitbox(
          radius: 21.5,
          position: Vector2(12.5, 0),
        ),
      ];

  /// Collision untuk Projectile
  static List<ShapeHitbox> projectileCollisionConfig({required double width}) => [
        RectangleHitbox(
          size: Vector2.all(width / 2),
          position: Vector2(width * 0.25, width * 0.25),
        ),
      ];
}
