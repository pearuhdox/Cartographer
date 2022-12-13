scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute unless score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob
execute unless score @s ability_charge matches 11 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob
execute unless score @s ability_charge matches 21 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob
execute unless score @s ability_charge matches 31 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob
execute unless score @s ability_charge matches 41 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob
execute unless score @s ability_charge matches 51 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

#Sounds
execute if score @s ability_charge matches 1 run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.5 0.5
execute if score @s ability_charge matches 1 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 1 0.5

execute if score @s ability_charge matches 11 run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.5 0.8
execute if score @s ability_charge matches 11 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 1 0.8

execute if score @s ability_charge matches 21 run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.5 1.1
execute if score @s ability_charge matches 21 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 1 1.1

execute if score @s ability_charge matches 31 run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.5 1.4
execute if score @s ability_charge matches 31 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 1 1.4

execute if score @s ability_charge matches 41 run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.5 1.7
execute if score @s ability_charge matches 41 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 1 1.7


#Particles
execute if score @s ability_charge matches 1 run particle minecraft:dust_color_transition 1 0 0 1 0 0 0 ~ ~0.5 ~ 1 0 1 0.1 150 normal @a
execute if score @s ability_charge matches 11 run particle minecraft:dust_color_transition 1 0 0 1 0 0 0 ~ ~0.75 ~ 0.75 0 0.75 0.1 120 normal @a
execute if score @s ability_charge matches 21 run particle minecraft:dust_color_transition 1 0 0 1 0 0 0 ~ ~1 ~ 0.5 0 0.5 0.1 90 normal @a
execute if score @s ability_charge matches 31 run particle minecraft:dust_color_transition 1 0 0 1 0 0 0 ~ ~1.25 ~ 0.3 0.3 0.3 0.1 60 normal @a
execute if score @s ability_charge matches 41 run particle minecraft:dust_color_transition 1 0 0 1 0 0 0 ~ ~1.5 ~ 0.3 1 0.3 0.1 100 normal @a


#At enemy particles
execute if score @s ability_charge matches 1..51 as @e[distance=0.5..15,limit=3,tag=!augmenter,sort=nearest,type=#bb:hostile] at @s run particle minecraft:dust_color_transition 1 0 0 1 0 0 0 ~ ~1 ~ 0.35 0.5 0.35 0 40 normal

execute if score @s ability_charge matches 1..41 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 1..51 run scoreboard players set @s mob_move_red 23
execute if score @s ability_charge matches 1..51 run scoreboard players set @s mob_atk_red 23

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 51.. run function cartographer_mob_abilities:abilities/augmenter
