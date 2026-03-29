execute if score $ow_below dynamite_cfg matches 1 unless block ~ ~-1 ~ #dynamite:protected_blocks run setblock ~ ~-1 ~ air
execute if score $ow_here dynamite_cfg matches 1 unless block ~ ~ ~ #dynamite:protected_blocks run setblock ~ ~ ~ air
execute if score $ow_above dynamite_cfg matches 1 unless block ~ ~1 ~ #dynamite:protected_blocks run setblock ~ ~1 ~ air
