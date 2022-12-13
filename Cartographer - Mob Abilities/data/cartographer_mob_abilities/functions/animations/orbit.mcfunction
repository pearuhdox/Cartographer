scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1 run playsound minecraft:entity.warden.emerge hostile @a[distance=..16] ~ ~ ~ 1 2

execute if score @s ability_charge matches 1 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if score @s[tag=ca.has_kited] ability_charge matches 1 run effect give @s jump_boost 2 6 true
execute if score @s[tag=ca.has_kited] ability_charge matches 1 run effect give @s levitation 1 0 true
execute if score @s[tag=ca.has_kited] ability_charge matches 1 run particle minecraft:cloud ~ ~-0.5 ~ 0.3 0 0.3 0.05 15 normal

execute if score @s ability_charge matches 1 run scoreboard players set @s mob_atk_red 31
execute if score @s ability_charge matches 1 run scoreboard players set @s mob_move_red 31
execute if score @s ability_charge matches 1 run scoreboard players set @s mob_sturdy 31

execute if score @s ability_charge matches 1 positioned ~ ~ ~ run particle minecraft:sculk_charge_pop ~ ~1 ~ 0.5 0.5 0.5 0 30

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 21.. run function cartographer_mob_abilities:abilities/orbit
