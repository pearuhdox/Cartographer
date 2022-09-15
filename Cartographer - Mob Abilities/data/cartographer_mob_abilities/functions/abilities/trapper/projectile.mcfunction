particle minecraft:sneeze ~ ~1 ~ 0.1 0.1 0.1 0.05 1 normal @a

execute if entity @s[tag=on_ground] run function cartographer_mob_abilities:abilities/trapper/place

execute unless entity @s[tag=on_ground] if entity @s[nbt={OnGround:1b}] run tag @s add on_ground