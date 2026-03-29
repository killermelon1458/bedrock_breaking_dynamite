Dynamite datapack for Minecraft Java 1.21.11

Recipe:
T I T
O R O
T I T

T = TNT
I = Iron Block
O = Obsidian
R = Redstone Block

Main commands:
/function dynamite:give
/function dynamite:enable
/function dynamite:disable
/function dynamite:status

Protected region commands (current dimension):
/function dynamite:protect/set_pos1
/function dynamite:protect/set_pos2
/function dynamite:protect/show
/function dynamite:protect/clear

Per-dimension feature toggles:
/function dynamite:toggle/overworld/above_on
/function dynamite:toggle/overworld/above_off
/function dynamite:toggle/overworld/here_on
/function dynamite:toggle/overworld/here_off
/function dynamite:toggle/overworld/below_on
/function dynamite:toggle/overworld/below_off

/function dynamite:toggle/nether/above_on
/function dynamite:toggle/nether/above_off
/function dynamite:toggle/nether/here_on
/function dynamite:toggle/nether/here_off
/function dynamite:toggle/nether/below_on
/function dynamite:toggle/nether/below_off

/function dynamite:toggle/end/above_on
/function dynamite:toggle/end/above_off
/function dynamite:toggle/end/here_on
/function dynamite:toggle/end/here_off
/function dynamite:toggle/end/below_on
/function dynamite:toggle/end/below_off

Notes:
- Custom block deletion is blocked inside the configured protected cuboid for that dimension.
- The cuboid is inclusive between both stored corners.
- Protected blocks are never deleted by the custom above/here/below logic.
- Breaking an unlit Dynamite block still drops normal TNT; that behavior was not changed here.
