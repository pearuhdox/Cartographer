execute if entity @s[nbt={Fire:20s}] run tag @s add skip_cauterize

execute if score $fa ca.fire_aspect matches 1.. run particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.1 5 normal

execute if score $fa ca.fire_aspect matches 1 run data modify entity @s Fire set value 100
execute if score $fa ca.fire_aspect matches 2 run data modify entity @s Fire set value 180
execute if score $fa ca.fire_aspect matches 3 run data modify entity @s Fire set value 260
execute if score $fa ca.fire_aspect matches 4 run data modify entity @s Fire set value 340
execute if score $fa ca.fire_aspect matches 5 run data modify entity @s Fire set value 420