particle minecraft:sneeze ~ ~1 ~ 0.1 0.1 0.1 0.05 1 normal @a

execute if entity @s[tag=armed] run function cartographer_mob_abilities:abilities/trapper/arming

execute if score @s ca.arm_time matches 10.. run function cartographer_mob_abilities:abilities/trapper/place

execute unless entity @s[tag=armed] if entity @s[nbt={OnGround:1b}] run tag @s add armed