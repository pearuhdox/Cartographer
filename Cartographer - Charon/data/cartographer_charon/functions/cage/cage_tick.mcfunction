#Timer
scoreboard players add @s cage.var 1

#Sound Effects
scoreboard players operation $cage_mod_35 cage.var = @s cage.var
scoreboard players operation $cage_mod_70 cage.var = @s cage.var
scoreboard players operation $cage_mod_210 cage.var = @s cage.var

scoreboard players operation $cage_mod_35 cage.var %= $35 ca.CONSTANT
scoreboard players operation $cage_mod_70 cage.var %= $70 ca.CONSTANT
scoreboard players operation $cage_mod_210 cage.var %= $210 ca.CONSTANT

execute if score $cage_mod_35 cage.var matches 0 run playsound minecraft:block.chain.break hostile @a[distance=..8] ~ ~ ~ 0.2 0.65
execute if score $cage_mod_35 cage.var matches 2 run playsound minecraft:block.chain.break hostile @a[distance=..8] ~ ~ ~ 0.2 0.85
execute if score $cage_mod_35 cage.var matches 4 run playsound minecraft:block.chain.break hostile @a[distance=..8] ~ ~ ~ 0.2 1.05
execute if score $cage_mod_35 cage.var matches 6 run playsound minecraft:block.chain.break hostile @a[distance=..8] ~ ~ ~ 0.2 1.25
execute if score $cage_mod_35 cage.var matches 8 run playsound minecraft:block.chain.break hostile @a[distance=..8] ~ ~ ~ 0.2 1.05
execute if score $cage_mod_35 cage.var matches 10 run playsound minecraft:block.chain.break hostile @a[distance=..8] ~ ~ ~ 0.2 0.85
execute if score $cage_mod_35 cage.var matches 12 run playsound minecraft:block.chain.break hostile @a[distance=..8] ~ ~ ~ 0.2 0.65
execute if score $cage_mod_35 cage.var matches 6 run playsound minecraft:entity.iron_golem.hurt hostile @a[distance=..8] ~ ~ ~ 0.4 2

execute if score $cage_mod_70 cage.var matches 0 run playsound minecraft:entity.warden.agitated hostile @a[distance=..10] ~ ~ ~ 0.75 0.5
execute if score $cage_mod_70 cage.var matches 0 run playsound minecraft:block.conduit.ambient hostile @a[distance=..20] ~ ~ ~ 2 1.15
execute if score $cage_mod_70 cage.var matches 0 run playsound minecraft:block.iron_trapdoor.open hostile @a[distance=..10] ~ ~ ~ 0.75 0.5


execute if score $cage_mod_210 cage.var matches 0 run scoreboard players set $rng_min bbl.rng 1
execute if score $cage_mod_210 cage.var matches 0 run scoreboard players set $rng_max bbl.rng 6

execute if score $cage_mod_210 cage.var matches 0 run function bb:lib/rng

execute if score $cage_mod_210 cage.var matches 0 if score $value bbl.rng matches 1..4 run playsound minecraft:entity.ravager.roar hostile @a[distance=..16] ~ ~ ~ 0.5 0.5
execute if score $cage_mod_210 cage.var matches 0 if score $value bbl.rng matches 5 run playsound minecraft:entity.enderman.scream hostile @a[distance=..16] ~ ~ ~ 0.5 0.5
execute if score $cage_mod_210 cage.var matches 0 if score $value bbl.rng matches 6 run playsound minecraft:entity.elder_guardian.curse hostile @a[distance=..16] ~ ~ ~ 0.5 0.5




#Visual Effects
tp @s ~ ~ ~ ~2 ~

execute if score $cage_mod_210 cage.var matches 191..219 run tp @s ~ ~ ~ ~18 ~
execute if score $cage_mod_210 cage.var matches 0..30 run tp @s ~ ~ ~ ~18 ~

execute if score $cage_mod_35 cage.var matches 0 run particle minecraft:sculk_soul ~ ~1.75 ~ 0.4 0.4 0.4 0.01 10 normal @a
execute if score $cage_mod_210 cage.var matches 0 run particle minecraft:cloud ~ ~1.5 ~ 0.5 0.0 0.5 0.05 15 normal @a
particle minecraft:soul_fire_flame ~ ~1.75 ~ 0.2 0.2 0.2 0.01 1 normal @a

execute unless entity @a[distance=..20] run data modify entity @s Glowing set value 0b
execute if entity @a[distance=..20] run data modify entity @s Glowing set value 1b

team join CharonCageVisual @s

#Functional
execute unless block ~ ~1.75 ~ spawner run function cartographer_charon:cage/cage_drop

execute if score $cage_mod_210 cage.var matches 0 run function cartographer_charon:cage/spawner_pressure

#Reset
execute if score @s cage.var matches 210 run scoreboard players set @s cage.var 0