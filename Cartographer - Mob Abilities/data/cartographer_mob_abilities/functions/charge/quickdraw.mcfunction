scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1 run playsound minecraft:item.crossbow.loading_end hostile @a[distance=..16] ~ ~ ~ 2 0.75
execute if score @s ability_charge matches 1 run playsound minecraft:block.chest.locked hostile @a[distance=..16] ~ ~ ~ 2 2
execute if score @s ability_charge matches 1 run playsound minecraft:entity.pillager.hurt hostile @a[distance=..16] ~ ~ ~ 2 1.5
execute if score @s ability_charge matches 1 run playsound minecraft:entity.blaze.hurt hostile @a[distance=..16] ~ ~ ~ 2 1.5

execute if score @s ability_charge matches 1 run scoreboard players set @s mob_dis_red 23

execute if score @s ability_charge matches 1 run data merge entity @s {NoAI:1}

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:charge/quickdraw/branch

execute if score @s ability_charge matches 1 run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 2 run function cartographer_mob_abilities:abilities/quickdraw