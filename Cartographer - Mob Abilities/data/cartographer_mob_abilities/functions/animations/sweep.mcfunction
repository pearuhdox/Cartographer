scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1 run playsound minecraft:entity.iron_golem.hurt hostile @a[distance=..16] ~ ~ ~ 5 1.5
execute if score @s ability_charge matches 9 run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..16] ~ ~ ~ 5 0.5

execute if score @s ability_charge matches 1 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 1 run data modify entity @s NoAI set value 1b

execute if score @s ability_charge matches 1 run tp @s ~ ~ ~ facing entity @p feet

scoreboard players set @s ca.mob_move_mode 1
scoreboard players set @s ca.mob_move_time 32

execute if score @s ability_charge matches 1 facing entity @p feet rotated ~ 0 positioned ~ ~0.75 ~ run function cartographer_mob_abilities:animations/sweep/place_lines
execute if score @s ability_charge matches 1 facing entity @p feet rotated ~ 0 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/sweep/warn

execute if score @s ability_charge matches 7 facing entity @p feet rotated ~ 0 positioned ~ ~0.75 ~ run function cartographer_mob_abilities:animations/sweep/place_lines
execute if score @s ability_charge matches 7 facing entity @p feet rotated ~ 0 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/sweep/warn

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 13.. run function cartographer_mob_abilities:abilities/sweep
