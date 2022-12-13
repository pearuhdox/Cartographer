scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1 run scoreboard players set @s mob_move_red 16

execute if score @s ability_charge matches 1 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 1..20 run particle minecraft:smoke ~ ~0.2 ~ 0.3 0.3 0.3 0.1 4 normal
execute if score @s ability_charge matches 1..20 run particle minecraft:large_smoke ~ ~0.2 ~ 0 0 0 0.1 1 normal

execute if score @s ability_charge matches 1..20 at @p run particle minecraft:smoke ~ ~0.2 ~ 0.3 0.3 0.3 0.03 2 normal
execute if score @s ability_charge matches 1..20 at @p run particle minecraft:large_smoke ~ ~0.2 ~ 0 0 0 0.03 1 normal

execute if score @s ability_charge matches 1 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..24] ~ ~ ~ 0.85 1
execute if score @s ability_charge matches 1 run playsound minecraft:entity.blaze.hurt hostile @a[distance=..24] ~ ~ ~ 1.5 2
execute if score @s ability_charge matches 1 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 1.5
execute if score @s ability_charge matches 2 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 1.55
execute if score @s ability_charge matches 3 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 1.6
execute if score @s ability_charge matches 4 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 1.65
execute if score @s ability_charge matches 5 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 1.7
execute if score @s ability_charge matches 6 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 1.75
execute if score @s ability_charge matches 7 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 1.8
execute if score @s ability_charge matches 8 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 1.85
execute if score @s ability_charge matches 9 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 1.9
execute if score @s ability_charge matches 10 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 1.95
execute if score @s ability_charge matches 11 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 2
execute if score @s ability_charge matches 12 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 2
execute if score @s ability_charge matches 13 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 2
execute if score @s ability_charge matches 14 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 2
execute if score @s ability_charge matches 15 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 2
execute if score @s ability_charge matches 16 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 2
execute if score @s ability_charge matches 17 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 2
execute if score @s ability_charge matches 18 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 2
execute if score @s ability_charge matches 19 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 2
execute if score @s ability_charge matches 20 run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..24] ~ ~ ~ 1 2

execute if score @s ability_charge matches 11 at @p run playsound minecraft:block.note_block.pling hostile @p ~ ~ ~ 0.4 1.5

execute if score @s[tag=ca.has_kited,tag=!ca.acro_kite_elytra] ability_charge matches 1 run effect give @s jump_boost 2 6 true
execute if score @s[tag=ca.has_kited,tag=!ca.acro_kite_elytra] ability_charge matches 1 run effect give @s levitation 1 0 true
execute if score @s[tag=ca.has_kited,tag=!ca.acro_kite_elytra] ability_charge matches 1 run particle minecraft:cloud ~ ~-0.5 ~ 0.3 0 0.3 0.05 15 normal
execute if score @s[tag=ca.has_kited,tag=!ca.acro_kite_elytra] ability_charge matches 1 run particle minecraft:cloud ~ ~-0.5 ~ 0.3 0 0.3 0.05 15 normal

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 20.. run function cartographer_mob_abilities:abilities/sniper_shot
