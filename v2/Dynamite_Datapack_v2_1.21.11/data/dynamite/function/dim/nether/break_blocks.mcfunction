execute if score $nether_below dynamite_cfg matches 1 unless block ~ ~-1 ~ #dynamite:protected_blocks run setblock ~ ~-1 ~ air
execute if score $nether_here dynamite_cfg matches 1 unless block ~ ~ ~ #dynamite:protected_blocks run setblock ~ ~ ~ air
execute if score $nether_above dynamite_cfg matches 1 unless block ~ ~1 ~ #dynamite:protected_blocks run setblock ~ ~1 ~ air
