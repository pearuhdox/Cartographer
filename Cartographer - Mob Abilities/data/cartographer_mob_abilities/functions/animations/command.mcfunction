scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1 run playsound minecraft:item.goat_horn.sound.2 hostile @a[distance=..20] ~ ~ ~ 1 1.25

execute if score @s ability_charge matches 1 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 1 run scoreboard players set @s mob_move_red 23
execute if score @s ability_charge matches 1 run scoreboard players set @s mob_atk_red 23

execute if score @s ability_charge matches 21 run function cartographer_mob_abilities:abilities/command

execute if score @s ability_charge matches 1 run particle minecraft:cloud ~ ~1 ~ 0.3 0.3 0.3 0.05 10 normal