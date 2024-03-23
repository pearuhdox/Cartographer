scoreboard players add @s ability_charge 1

execute unless score $gl_ab_ani ca.gamerule matches 1 run function cartographer_mob_abilities:animations/sweep/charge_bar

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1 run playsound minecraft:entity.iron_golem.hurt hostile @a[distance=..16] ~ ~ ~ 5 1.5
execute if score @s ability_charge matches 9 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..16] ~ ~ ~ 5 0.5

execute if score @s ability_charge matches 1 unless score $gl_ab_ani ca.gamerule matches 2 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true


execute if score @s ability_charge matches 1 run tp 31182015-2018-1311-5181-311811518 ~ ~ ~ facing entity @p feet
execute if score @s ability_charge matches 1 store result score @s ca.aim_direction run data get entity 31182015-2018-1311-5181-311811518 Rotation[0]
execute if score @s ability_charge matches 1 run tp 31182015-2018-1311-5181-311811518 4206900 0 4206900
execute if score @s ability_charge matches 1 store result storage cartographer:macro.mob_abilities aim_direction int 1 run scoreboard players get @s ca.aim_direction

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:animations/sweep/macro with storage cartographer:macro.mob_abilities

execute if score @s ability_charge matches 7 run tp 31182015-2018-1311-5181-311811518 ~ ~ ~ facing entity @p feet
execute if score @s ability_charge matches 7 store result score @s ca.aim_direction run data get entity 31182015-2018-1311-5181-311811518 Rotation[0]
execute if score @s ability_charge matches 7 run tp 31182015-2018-1311-5181-311811518 4206900 0 4206900
execute if score @s ability_charge matches 7 store result storage cartographer:macro.mob_abilities aim_direction int 1 run scoreboard players get @s ca.aim_direction

execute if score @s ability_charge matches 7 run function cartographer_mob_abilities:animations/sweep/macro with storage cartographer:macro.mob_abilities

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 13.. run function cartographer_mob_abilities:abilities/sweep
