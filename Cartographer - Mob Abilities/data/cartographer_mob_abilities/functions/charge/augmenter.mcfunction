
execute unless entity @s[scores={ability_charge=1..}] unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute unless entity @s[scores={ability_charge=5..}] run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

#Sounds
execute unless entity @s[scores={ability_charge=1..}] run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.5 0.5
execute unless entity @s[scores={ability_charge=1..}] run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 1 0.5

execute if entity @s[scores={ability_charge=1}] run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.5 0.8
execute if entity @s[scores={ability_charge=1}] run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 1 0.8

execute if entity @s[scores={ability_charge=2}] run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.5 1.1
execute if entity @s[scores={ability_charge=2}] run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 1 1.1

execute if entity @s[scores={ability_charge=3}] run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.5 1.4
execute if entity @s[scores={ability_charge=3}] run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 1 1.4

execute if entity @s[scores={ability_charge=4}] run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.5 1.7
execute if entity @s[scores={ability_charge=4}] run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 1 1.7


#Particles
execute unless entity @s[scores={ability_charge=1..}] run particle minecraft:dust_color_transition 1 0 0 1 0 0 0 ~ ~0.5 ~ 1 0 1 0.1 150 normal @a
execute if entity @s[scores={ability_charge=1}] run particle minecraft:dust_color_transition 1 0 0 1 0 0 0 ~ ~0.75 ~ 0.75 0 0.75 0.1 120 normal @a
execute if entity @s[scores={ability_charge=2}] run particle minecraft:dust_color_transition 1 0 0 1 0 0 0 ~ ~1 ~ 0.5 0 0.5 0.1 90 normal @a
execute if entity @s[scores={ability_charge=3}] run particle minecraft:dust_color_transition 1 0 0 1 0 0 0 ~ ~1.25 ~ 0.3 0.3 0.3 0.1 60 normal @a
execute if entity @s[scores={ability_charge=4}] run particle minecraft:dust_color_transition 1 0 0 1 0 0 0 ~ ~1.5 ~ 0.3 1 0.3 0.1 100 normal @a


#At enemy particles
execute unless entity @s[scores={ability_charge=5..6}] as @e[distance=0.5..15,limit=3,tag=!augmenter,sort=nearest,type=#bb:hostile] at @s run particle minecraft:dust_color_transition 1 0 0 1 0 0 0 ~ ~1 ~ 0.35 0.5 0.35 0 40 normal

execute unless entity @s[scores={ability_charge=5..6}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=5..6}] run scoreboard players set @s mob_move_red 23
execute unless entity @s[scores={ability_charge=5..6}] run scoreboard players set @s mob_atk_red 23


execute unless entity @s[scores={ability_charge=6}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=6}] run function cartographer_mob_abilities:abilities/augmenter