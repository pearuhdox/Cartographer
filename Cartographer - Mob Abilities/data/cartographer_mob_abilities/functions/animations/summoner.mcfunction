scoreboard players add @s ability_charge 1
execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1 run playsound minecraft:entity.evoker.prepare_summon hostile @a[distance=..24] ~ ~ ~ 1 1 
execute if score @s ability_charge matches 1 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0

execute if score @s ability_charge matches 1 anchored eyes run scoreboard players set @s mob_move_red 20

execute if score @s ability_charge matches 1 anchored eyes run particle minecraft:effect ^0.5 ^0.3 ^ 0.15 0 0.15 0 10 normal
execute if score @s ability_charge matches 1 anchored eyes run particle minecraft:effect ^-0.5 ^0.3 ^ 0.15 0 0.15 0 10 normal

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 21.. run function cartographer_mob_abilities:abilities/summoner
