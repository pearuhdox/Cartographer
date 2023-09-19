scoreboard players add @s ability_charge 1

execute unless score $gl_ab_ani ca.gamerule matches 1 run function cartographer_mob_abilities:animations/reflect/charge_bar

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 5 run playsound minecraft:entity.zombie.attack_wooden_door player @a[distance=..16] ~ ~ ~ 0.5 0.75
execute if score @s ability_charge matches 10 run playsound minecraft:entity.zombie.attack_wooden_door player @a[distance=..16] ~ ~ ~ 0.5 1
execute if score @s ability_charge matches 15 run playsound minecraft:entity.zombie.attack_wooden_door player @a[distance=..16] ~ ~ ~ 0.5 1.25
execute if score @s ability_charge matches 20 run playsound minecraft:entity.zombie.attack_wooden_door player @a[distance=..16] ~ ~ ~ 0.5 1.5

execute if score @s ability_charge matches 5 run function cartographer_mob_abilities:animations/reflect/ring_vfx
execute if score @s ability_charge matches 10 run function cartographer_mob_abilities:animations/reflect/ring_vfx
execute if score @s ability_charge matches 15 run function cartographer_mob_abilities:animations/reflect/ring_vfx
execute if score @s ability_charge matches 20 run function cartographer_mob_abilities:animations/reflect/ring_vfx

execute if score @s ability_charge matches 30 run particle minecraft:cloud ^ ^0.5 ^2 0 0 0 0.05 10 normal
execute if score @s ability_charge matches 40 run particle minecraft:cloud ^ ^0.5 ^2 0 0 0 0.05 10 normal
execute if score @s ability_charge matches 50 run particle minecraft:cloud ^ ^0.5 ^2 0 0 0 0.05 10 normal
execute if score @s ability_charge matches 60 run particle minecraft:cloud ^ ^0.5 ^2 0 0 0 0.05 10 normal
execute if score @s ability_charge matches 30 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/reflect/ring_vfx
execute if score @s ability_charge matches 40 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/reflect/ring_vfx
execute if score @s ability_charge matches 50 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/reflect/ring_vfx
execute if score @s ability_charge matches 60 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/reflect/ring_vfx

execute if score @s ability_charge matches 25 run data modify entity @s Invulnerable set value 1b

execute if score @s ability_charge matches 30 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/reflect/damage
execute if score @s ability_charge matches 40 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/reflect/damage
execute if score @s ability_charge matches 50 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/reflect/damage
execute if score @s ability_charge matches 60 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/reflect/damage

execute if score @s ability_charge matches 30 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/reflect/sounds
execute if score @s ability_charge matches 40 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/reflect/sounds
execute if score @s ability_charge matches 50 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/reflect/sounds
execute if score @s ability_charge matches 60 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/reflect/sounds

execute if score @s ability_charge matches 65 run data modify entity @s Invulnerable set value 0b

execute if score @s ability_charge matches 1..41 unless score $gl_ab_ani ca.gamerule matches 2 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute unless score @s ability_charge matches 20 run function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 65.. run function cartographer_mob_abilities:abilities/reflect
