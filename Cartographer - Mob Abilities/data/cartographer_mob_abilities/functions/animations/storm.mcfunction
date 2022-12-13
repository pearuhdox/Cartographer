scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 run scoreboard players set @s mob_move_red 21

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1 run playsound minecraft:item.trident.thunder player @a[distance=..20] ~ ~ ~ 1.5 1.25

execute if score @s ability_charge matches 1 at @a[distance=..16] positioned ~ ~8 ~ run particle minecraft:cloud ~ ~ ~ 2 0.2 2 0.01 200 normal
execute if score @s ability_charge matches 1 at @s positioned ~ ~4 ~ run particle minecraft:cloud ~ ~ ~ 1 0.2 1 0.01 80 normal

execute if score @s ability_charge matches 1 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if score @s[tag=ca.has_kited] ability_charge matches 1 run effect give @s jump_boost 2 6 true
execute if score @s[tag=ca.has_kited] ability_charge matches 1 run effect give @s levitation 1 0 true
execute if score @s[tag=ca.has_kited] ability_charge matches 1 run particle minecraft:cloud ~ ~-0.5 ~ 0.3 0 0.3 0.05 15 normal

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 16.. run function cartographer_mob_abilities:abilities/storm
