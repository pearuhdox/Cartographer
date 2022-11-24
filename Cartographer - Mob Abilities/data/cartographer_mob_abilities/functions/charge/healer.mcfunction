scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks


#Sounds
execute if score @s ability_charge matches 1 run playsound minecraft:block.bell.resonate hostile @a[distance=..16] ~ ~ ~ 0.35 2
execute if score @s ability_charge matches 1 run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.35 0.5
execute if score @s ability_charge matches 1 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 0.5
execute if score @s ability_charge matches 1 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 0.5

execute if score @s ability_charge matches 2..5 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 0.75 0.5
execute if score @s ability_charge matches 2..5 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 0.75 0.5


execute if score @s ability_charge matches 2..5 run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.35 0.8
execute if score @s ability_charge matches 2..5 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 0.68
execute if score @s ability_charge matches 2..5 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 0.68

execute if score @s ability_charge matches 3..5 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 0.905
execute if score @s ability_charge matches 3..5 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 0.905

execute if score @s ability_charge matches 4..5 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 1.21
execute if score @s ability_charge matches 4..5 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 1.21

execute if score @s ability_charge matches 5 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 1.62
execute if score @s ability_charge matches 5 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 1.62


#Particles
execute if score @s ability_charge matches 1 run particle minecraft:firework ~4 ~0.5 ~-4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 2 run particle minecraft:firework ~3 ~0.5 ~-1 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 3 run particle minecraft:firework ~1 ~0.5 ~ 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 1 run particle minecraft:end_rod ~4 ~0.5 ~-4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 2 run particle minecraft:end_rod ~3 ~0.5 ~-1 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 3 run particle minecraft:end_rod ~1 ~0.5 ~ 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 1 run particle minecraft:firework ~-4 ~0.5 ~-4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 2 run particle minecraft:firework ~-1 ~0.5 ~-3 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 3 run particle minecraft:firework ~ ~0.5 ~-1 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 1 run particle minecraft:end_rod ~-4 ~0.5 ~-4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 2 run particle minecraft:end_rod ~-1 ~0.5 ~-3 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 3 run particle minecraft:end_rod ~ ~0.5 ~-1 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 1 run particle minecraft:firework ~-4 ~0.5 ~4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 2 run particle minecraft:firework ~-3 ~0.5 ~1 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 3 run particle minecraft:firework ~-1 ~0.5 ~ 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 1 run particle minecraft:end_rod ~-4 ~0.5 ~4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 2 run particle minecraft:end_rod ~-3 ~0.5 ~1 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 3 run particle minecraft:end_rod ~-1 ~0.5 ~ 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 1 run particle minecraft:firework ~4 ~0.5 ~4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 2 run particle minecraft:firework ~1 ~0.5 ~3 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 3 run particle minecraft:firework ~ ~0.5 ~1 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 1 run particle minecraft:end_rod ~4 ~0.5 ~4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 2 run particle minecraft:end_rod ~1 ~0.5 ~3 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 3 run particle minecraft:end_rod ~ ~0.5 ~1 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 4 run particle minecraft:firework ~ ~1.5 ~ 0.3 0.3 0.3 0.05 25 normal @a
execute if score @s ability_charge matches 4 run particle minecraft:end_rod ~ ~1.5 ~ 0.3 0.3 0.3 0.05 25 normal @a

execute if score @s ability_charge matches 5 run particle minecraft:firework ~ ~1.5 ~ 0 0.5 0 0.05 40 normal @a
execute if score @s ability_charge matches 5 run particle minecraft:end_rod ~ ~1.5 ~ 0 0.5 0 0.05 40 normal @a


execute if score @s ability_charge matches 1..5 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 1..5 run scoreboard players set @s mob_move_dis 23

execute if score @s ability_charge matches 6 run function cartographer_mob_abilities:abilities/healer