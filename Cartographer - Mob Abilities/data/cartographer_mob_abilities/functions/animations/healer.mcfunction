scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks


#Sounds
execute if score @s ability_charge matches 1 run playsound minecraft:block.bell.resonate hostile @a[distance=..16] ~ ~ ~ 0.35 2
execute if score @s ability_charge matches 1 run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.35 0.5
execute if score @s ability_charge matches 1 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 0.5
execute if score @s ability_charge matches 1 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 0.5

execute if score @s ability_charge matches 11 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 0.75 0.5
execute if score @s ability_charge matches 11 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 0.75 0.5
execute if score @s ability_charge matches 11 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 0.68
execute if score @s ability_charge matches 11 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 0.68


execute if score @s ability_charge matches 21 run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 0.35 0.8
execute if score @s ability_charge matches 21 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 0.68
execute if score @s ability_charge matches 21 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 0.68
execute if score @s ability_charge matches 21 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 0.905
execute if score @s ability_charge matches 21 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 0.905

execute if score @s ability_charge matches 31 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 0.905
execute if score @s ability_charge matches 31 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 0.905
execute if score @s ability_charge matches 31 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 0.75 0.5
execute if score @s ability_charge matches 31 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 0.75 0.5
execute if score @s ability_charge matches 31 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 0.68
execute if score @s ability_charge matches 31 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 0.68
execute if score @s ability_charge matches 31 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 1.21
execute if score @s ability_charge matches 31 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 1.21


execute if score @s ability_charge matches 41 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 1.21
execute if score @s ability_charge matches 41 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 1.21
execute if score @s ability_charge matches 31 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 0.905
execute if score @s ability_charge matches 41 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 0.905
execute if score @s ability_charge matches 41 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 0.75 0.5
execute if score @s ability_charge matches 41 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 0.75 0.5
execute if score @s ability_charge matches 41 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 0.68
execute if score @s ability_charge matches 41 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 0.68
execute if score @s ability_charge matches 41 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 1.62
execute if score @s ability_charge matches 41 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 1.62

execute if score @s ability_charge matches 51 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 1.62
execute if score @s ability_charge matches 51 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 1.62
execute if score @s ability_charge matches 51 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 1.21
execute if score @s ability_charge matches 51 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 1.21
execute if score @s ability_charge matches 51 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 0.905
execute if score @s ability_charge matches 51 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 0.905
execute if score @s ability_charge matches 51 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 0.75 0.5
execute if score @s ability_charge matches 51 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 0.75 0.5
execute if score @s ability_charge matches 51 run playsound minecraft:block.note_block.chime hostile @a[distance=..16] ~ ~ ~ 1 0.68
execute if score @s ability_charge matches 51 run playsound minecraft:block.note_block.bell hostile @a[distance=..16] ~ ~ ~ 1 0.68

#Particles
execute if score @s ability_charge matches 1 run particle minecraft:firework ~4 ~0.5 ~-4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 11 run particle minecraft:firework ~3 ~0.5 ~-1 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 21 run particle minecraft:firework ~1 ~0.5 ~ 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 1 run particle minecraft:end_rod ~4 ~0.5 ~-4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 11 run particle minecraft:end_rod ~3 ~0.5 ~-1 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 21 run particle minecraft:end_rod ~1 ~0.5 ~ 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 1 run particle minecraft:firework ~-4 ~0.5 ~-4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 11 run particle minecraft:firework ~-1 ~0.5 ~-3 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 21 run particle minecraft:firework ~ ~0.5 ~-1 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 1 run particle minecraft:end_rod ~-4 ~0.5 ~-4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 11 run particle minecraft:end_rod ~-1 ~0.5 ~-3 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 21 run particle minecraft:end_rod ~ ~0.5 ~-1 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 1 run particle minecraft:firework ~-4 ~0.5 ~4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 11 run particle minecraft:firework ~-3 ~0.5 ~1 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 21 run particle minecraft:firework ~-1 ~0.5 ~ 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 1 run particle minecraft:end_rod ~-4 ~0.5 ~4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 11 run particle minecraft:end_rod ~-3 ~0.5 ~1 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 21 run particle minecraft:end_rod ~-1 ~0.5 ~ 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 1 run particle minecraft:firework ~4 ~0.5 ~4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 11 run particle minecraft:firework ~1 ~0.5 ~3 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 21 run particle minecraft:firework ~ ~0.5 ~1 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 1 run particle minecraft:end_rod ~4 ~0.5 ~4 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 11 run particle minecraft:end_rod ~1 ~0.5 ~3 0.2 0.2 0.2 0.05 15 normal @a
execute if score @s ability_charge matches 21 run particle minecraft:end_rod ~ ~0.5 ~1 0.2 0.2 0.2 0.05 15 normal @a

execute if score @s ability_charge matches 31 run particle minecraft:firework ~ ~1.5 ~ 0.3 0.3 0.3 0.05 25 normal @a
execute if score @s ability_charge matches 31 run particle minecraft:end_rod ~ ~1.5 ~ 0.3 0.3 0.3 0.05 25 normal @a

execute if score @s ability_charge matches 41 run particle minecraft:firework ~ ~1.5 ~ 0 0.5 0 0.05 40 normal @a
execute if score @s ability_charge matches 41 run particle minecraft:end_rod ~ ~1.5 ~ 0 0.5 0 0.05 40 normal @a


execute if score @s ability_charge matches 1..41 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 1..41 run scoreboard players set @s mob_move_dis 23

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 51.. run function cartographer_mob_abilities:abilities/healer
