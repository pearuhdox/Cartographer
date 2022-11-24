scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

scoreboard players operation $needle_mod ability_charge = @s ability_charge
scoreboard players operation $needle_mod ability_charge %= $10 ca.CONSTANT

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1..15 run particle poof ~ ~0.5 ~ 0.3 0.2 0.3 0.1 3 normal
execute if score @s ability_charge matches 1..15 anchored eyes run particle poof ^ ^ ^0.5 0.3 0.2 0.3 0.1 1 normal

execute if score @s ability_charge matches 1 run playsound minecraft:item.crossbow.loading_start hostile @a[distance=..20] ~ ~ ~ 2 0.75
execute if score @s ability_charge matches 1 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 0.5
execute if score @s ability_charge matches 2 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 0.55
execute if score @s ability_charge matches 3 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 0.6
execute if score @s ability_charge matches 4 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 0.65
execute if score @s ability_charge matches 5 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 0.7
execute if score @s ability_charge matches 6 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 0.75
execute if score @s ability_charge matches 7 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 0.8
execute if score @s ability_charge matches 8 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 0.85
execute if score @s ability_charge matches 9 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 0.9
execute if score @s ability_charge matches 10 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 0.95
execute if score @s ability_charge matches 10 run playsound minecraft:item.crossbow.loading_middle hostile @a[distance=..20] ~ ~ ~ 2 0.75
execute if score @s ability_charge matches 11 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 1.0
execute if score @s ability_charge matches 12 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 1.05
execute if score @s ability_charge matches 13 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 1.1
execute if score @s ability_charge matches 14 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 1.15
execute if score @s ability_charge matches 15 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 1.2
execute if score @s ability_charge matches 16 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 1.25
execute if score @s ability_charge matches 17 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 1.3
execute if score @s ability_charge matches 18 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 1.35
execute if score @s ability_charge matches 19 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 1.4
execute if score @s ability_charge matches 20 run playsound minecraft:entity.snowball.throw hostile @a[distance=..20] ~ ~ ~ 1 1.45
execute if score @s ability_charge matches 20 run playsound minecraft:item.crossbow.loading_end hostile @a[distance=..20] ~ ~ ~ 2 0.75

execute if score @s ability_charge matches 20.. run function cartographer_mob_abilities:charge/barrage/branch

execute if score @s ability_charge matches 1..40 run effect give @s glowing 1 0 true

execute if score $needle_mod ability_charge matches 1 if score @s[tag=ca.has_kited,tag=!ca.acrobatic_kite_elytra] ability_charge matches 1..40 run effect give @s jump_boost 2 6 true
execute if score $needle_mod ability_charge matches 1 if score @s[tag=ca.has_kited,tag=!ca.acrobatic_kite_elytra] ability_charge matches 1..40 run effect give @s levitation 1 0 true
execute if score $needle_mod ability_charge matches 1 if score @s[tag=ca.has_kited,tag=!ca.acrobatic_kite_elytra] ability_charge matches 1 run particle minecraft:cloud ~ ~-0.5 ~ 0.3 0 0.3 0.05 15 normal
execute if score $needle_mod ability_charge matches 1 if score @s[tag=ca.has_kited,tag=!ca.acrobatic_kite_elytra] ability_charge matches 41 run particle minecraft:cloud ~ ~-0.5 ~ 0.3 0 0.3 0.05 15 normal

execute if score @s ability_charge matches 60.. run function cartographer_mob_abilities:abilities/barrage