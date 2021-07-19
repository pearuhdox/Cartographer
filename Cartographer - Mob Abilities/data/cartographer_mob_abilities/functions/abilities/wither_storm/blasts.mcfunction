execute if score @s wither_storms matches 201 run particle minecraft:large_smoke ~ ~10 ~ 0 0 0 0.05 8 normal
execute if score @s wither_storms matches 202 run particle minecraft:large_smoke ~ ~9 ~ 0 0 0 0.05 8 normal
execute if score @s wither_storms matches 203 run particle minecraft:large_smoke ~ ~8 ~ 0 0 0 0.05 8 normal
execute if score @s wither_storms matches 204 run particle minecraft:large_smoke ~ ~7 ~ 0 0 0 0.05 8 normal
execute if score @s wither_storms matches 205 run particle minecraft:large_smoke ~ ~6 ~ 0 0 0 0.05 8 normal
execute if score @s wither_storms matches 206 run particle minecraft:large_smoke ~ ~5 ~ 0 0 0 0.05 8 normal
execute if score @s wither_storms matches 207 run particle minecraft:large_smoke ~ ~4 ~ 0 0 0 0.05 8 normal
execute if score @s wither_storms matches 208 run particle minecraft:large_smoke ~ ~3 ~ 0 0 0 0.05 8 normal
execute if score @s wither_storms matches 209 run particle minecraft:large_smoke ~ ~2 ~ 0 0 0 0.05 8 normal
execute if score @s wither_storms matches 210 run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.05 8 normal

execute if score @s wither_storms matches 201..210 run playsound minecraft:entity.wither.ambient hostile @a[distance=..8] ~ ~ ~ 0.3 2
execute if score @s wither_storms matches 211 run playsound minecraft:entity.wither.spawn hostile @a[distance=..8] ~ ~ ~ 0.3 2

execute if score @s wither_storms matches 211 run effect give @a[distance=..2] wither 8 1 true
execute if score @s wither_storms matches 211 run summon wither_skull ~ ~0.25 ~ {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute if score @s wither_storms matches 211 run kill @s

scoreboard players add @s wither_storms 1

