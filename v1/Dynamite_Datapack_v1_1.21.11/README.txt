Dynamite Datapack for Minecraft Java 1.21.11

Commands:
- /function dynamite:enable
- /function dynamite:disable
- /function dynamite:give   (optional test helper)

Recipe:
  T I T
  O R O
  T I T

T = TNT
I = Iron Block
O = Obsidian
R = Redstone Block

Behavior:
- Crafted Dynamite places as TNT.
- If enabled, primed Dynamite gets explosion_power 6.0 (charged-creeper strength).
- Right before it explodes, it runs: fill ~0 ~-1 ~0 ~0 ~1 ~0 air
- If disabled, it behaves like normal TNT.
