scoreboard players add @s ability_charge 1

execute unless entity @s[tag=ca.pulse] run scoreboard players set @s mob_move_red 23

execute if score @s ability_charge matches 1..2 if entity @s[tag=ca.pulse] run scoreboard players set @s mob_move_red 10
execute if score @s ability_charge matches 1 if entity @s[tag=ca.pulse] run scoreboard players set @s mob_move_dis 5

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1..2 run playsound minecraft:block.fire.ambient hostile @a[distance=..16] ~ ~ ~ 2 0.5
execute if score @s ability_charge matches 1 run playsound minecraft:block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 2 0.7
execute if score @s ability_charge matches 2 run playsound minecraft:block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 2 0.9

execute if score @s ability_charge matches 1..2 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1..2 if entity @s[tag=ca.pulse] run function cartographer_mob_abilities:charge/nova/pulse/vfx
execute if score @s ability_charge matches 1..2 unless entity @s[tag=ca.pulse] run function cartographer_mob_abilities:charge/nova/normal/vfx


execute if score @s ability_charge matches 1..2 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 3 run function cartographer_mob_abilities:abilities/nova