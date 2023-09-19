scoreboard players add @s ability_charge 1

execute unless score $gl_ab_ani ca.gamerule matches 1 run function cartographer_mob_abilities:animations/infuser/charge_bar

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks


execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob
execute if score @s ability_charge matches 21 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob
execute if score @s ability_charge matches 41 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

#Sounds
execute if score @s ability_charge matches 1 run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.5 0.5
execute if score @s ability_charge matches 1 run playsound minecraft:block.brewing_stand.brew hostile @a[distance=..16] ~ ~ ~ 1 0.5

#execute if score @s ability_charge matches 11 run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.5 0.8
#execute if score @s ability_charge matches 11 run playsound minecraft:block.brewing_stand.brew hostile @a[distance=..16] ~ ~ ~ 1 0.8

execute if score @s ability_charge matches 21 run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.5 0.75
execute if score @s ability_charge matches 21 run playsound minecraft:block.brewing_stand.brew hostile @a[distance=..16] ~ ~ ~ 1 1.1

#execute if score @s ability_charge matches 31 run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.5 1.1
#execute if score @s ability_charge matches 31 run playsound minecraft:block.brewing_stand.brew hostile @a[distance=..16] ~ ~ ~ 1 1.4

execute if score @s ability_charge matches 41 run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.5 1
execute if score @s ability_charge matches 41 run playsound minecraft:block.brewing_stand.brew hostile @a[distance=..16] ~ ~ ~ 1 1.7


#Particles
execute if score @s ability_charge matches 1 run particle minecraft:witch ~ ~0.5 ~ 1 0 1 0.1 50 normal @a
execute if score @s ability_charge matches 11 run particle minecraft:witch ~ ~0.75 ~ 0.75 0 0.75 0.1 40 normal @a
execute if score @s ability_charge matches 21 run particle minecraft:witch ~ ~1 ~ 0.5 0 0.5 0.1 30 normal @a
execute if score @s ability_charge matches 31 run particle minecraft:witch ~ ~1.25 ~ 0.3 0.3 0.3 0.1 20 normal @a
execute if score @s ability_charge matches 41 run particle minecraft:witch ~ ~1.5 ~ 0.3 1 0.3 0.1 10 normal @a


execute if score @s ability_charge matches 1..41 unless score $gl_ab_ani ca.gamerule matches 2 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 1..41 run scoreboard players set @s mob_move_dis 23

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 51.. run function cartographer_mob_abilities:abilities/infuser
