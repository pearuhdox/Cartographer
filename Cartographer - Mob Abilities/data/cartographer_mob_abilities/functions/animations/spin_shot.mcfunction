scoreboard players add @s ability_charge 1

execute unless score $gl_ab_ani ca.gamerule matches 1 run function cartographer_mob_abilities:animations/spin_shot/charge_bar

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

scoreboard players operation $needle_mod ability_charge = @s ability_charge
scoreboard players operation $needle_mod ability_charge %= $10 ca.CONSTANT

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1..15 run particle poof ~ ~0.5 ~ 0.3 0.2 0.3 0.1 3 normal
execute if score @s ability_charge matches 1..15 anchored eyes run particle poof ^ ^ ^0.5 0.3 0.2 0.3 0.1 1 normal

execute if score @s ability_charge matches 2 run playsound minecraft:item.crossbow.loading_start hostile @a[distance=..20] ~ ~ ~ 2 0.75

execute if score @s ability_charge matches 1 run playsound minecraft:item.bottle.fill_dragonbreath hostile @a[distance=..20] ~ ~ ~ 2 1
execute if score @s ability_charge matches 4 run playsound minecraft:item.bottle.fill_dragonbreath hostile @a[distance=..20] ~ ~ ~ 2 1.1
execute if score @s ability_charge matches 7 run playsound minecraft:item.bottle.fill_dragonbreath hostile @a[distance=..20] ~ ~ ~ 2 1.2
execute if score @s ability_charge matches 10 run playsound minecraft:item.bottle.fill_dragonbreath hostile @a[distance=..20] ~ ~ ~ 2 1.3
execute if score @s ability_charge matches 13 run playsound minecraft:item.bottle.fill_dragonbreath hostile @a[distance=..20] ~ ~ ~ 2 1.4

execute if score @s ability_charge matches 16 run playsound minecraft:item.bottle.fill_dragonbreath hostile @a[distance=..20] ~ ~ ~ 2 1.5
execute if score @s ability_charge matches 19 run playsound minecraft:item.bottle.fill_dragonbreath hostile @a[distance=..20] ~ ~ ~ 2 1.6
execute if score @s ability_charge matches 22 run playsound minecraft:item.bottle.fill_dragonbreath hostile @a[distance=..20] ~ ~ ~ 2 1.7
execute if score @s ability_charge matches 25 run playsound minecraft:item.bottle.fill_dragonbreath hostile @a[distance=..20] ~ ~ ~ 2 1.8
execute if score @s ability_charge matches 28 run playsound minecraft:item.bottle.fill_dragonbreath hostile @a[distance=..20] ~ ~ ~ 2 1.9
execute if score @s ability_charge matches 31 run playsound minecraft:item.bottle.fill_dragonbreath hostile @a[distance=..20] ~ ~ ~ 2 2.0


execute if score @s ability_charge matches 1..15 unless score $gl_ab_ani ca.gamerule matches 2 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 1..5 run tp @s ~ ~ ~ facing entity @p feet

execute if score @s ability_charge matches 1 run scoreboard players set @s mob_move_red 35
execute if score @s ability_charge matches 1 run scoreboard players set @s mob_atk_dis 30

execute if score @s[tag=ca.has_kited,tag=!ca.acro_kite_elytra] ability_charge matches 1..8 run effect give @s jump_boost 2 6 true
execute if score @s[tag=ca.has_kited,tag=!ca.acro_kite_elytra] ability_charge matches 1..8 run effect give @s levitation 1 0 true
execute if score @s[tag=ca.has_kited,tag=!ca.acro_kite_elytra] ability_charge matches 1..8 run particle minecraft:cloud ~ ~-0.5 ~ 0.3 0 0.3 0.05 15 normal
execute if score @s[tag=ca.has_kited,tag=!ca.acro_kite_elytra] ability_charge matches 1..8 run particle minecraft:cloud ~ ~-0.5 ~ 0.3 0 0.3 0.05 15 normal

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 34 run function cartographer_mob_abilities:animations/charge/aim_call
execute if score @s ability_charge matches 35.. store result storage cartographer:macro.mob_abilities aim_direction int 1 run scoreboard players get @s ca.aim_direction
execute if score @s ability_charge matches 35.. store result storage cartographer:macro.mob_abilities aim_direction_y int 1 run scoreboard players get @s ca.aim_direction_y
execute if score @s ability_charge matches 35.. run function cartographer_mob_abilities:animations/spin_shot/macro with storage cartographer:macro.mob_abilities
