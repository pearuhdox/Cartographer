execute if score $laser_charge ability_charge matches 1..10 run particle minecraft:dust 1 1 1 0.6 ~ ~ ~ 0.15 0.15 0.15 1 6 normal
execute if score $laser_charge ability_charge matches 11..20 run particle minecraft:dust 0.922 0.922 0.839 0.6 ~ ~ ~ 0.15 0.15 0.15 1 6 normal
execute if score $laser_charge ability_charge matches 21..30 run particle minecraft:dust 0.992 0.89 0.89 0.6 ~ ~ ~ 0.15 0.15 0.15 1 6 normal
execute if score $laser_charge ability_charge matches 31..40 run particle minecraft:dust 1 0.808 0.808 0.6 ~ ~ ~ 0.15 0.15 0.15 1 6 normal
execute if score $laser_charge ability_charge matches 41..50 run particle minecraft:dust 1 0.769 0.769 0.6 ~ ~ ~ 0.15 0.15 0.15 1 6 normal
execute if score $laser_charge ability_charge matches 51..60 run particle minecraft:dust 1 0.655 0.655 0.6 ~ ~ ~ 0.15 0.15 0.15 1 6 normal
execute if score $laser_charge ability_charge matches 61..70 run particle minecraft:dust 1 0.557 0.557 0.6 ~ ~ ~ 0.15 0.15 0.15 1 6 normal
execute if score $laser_charge ability_charge matches 71..80 run particle minecraft:dust 1 0.463 0.463 0.6 ~ ~ ~ 0.15 0.15 0.15 1 6 normal
execute if score $laser_charge ability_charge matches 81..90 run particle minecraft:dust 1 0.373 0.373 0.6 ~ ~ ~ 0.15 0.15 0.15 1 6 normal
execute if score $laser_charge ability_charge matches 91..100 run particle minecraft:dust 1 0.275 0.275 0.6 ~ ~ ~ 0.15 0.15 0.15 1 6 normal
execute if score $laser_charge ability_charge matches 101..110 run particle minecraft:dust 1 0.165 0.165 0.6 ~ ~ ~ 0.15 0.15 0.15 1 6 normal
execute if score $laser_charge ability_charge matches 111..120 run particle minecraft:dust 1 0.063 0.063 0.6 ~ ~ ~ 0.15 0.15 0.15 1 6 normal

scoreboard players operation $laser_mod ability_charge = $laser_charge ability_charge
scoreboard players operation $laser_mod ability_charge %= $4 ca.CONSTANT

execute if score $laser_mod ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/projectile

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @a[distance=..1.5] run scoreboard players set @s ca.raycast 0

execute if entity @s[scores={ca.raycast=1..}] positioned ^ ^ ^1 if block ~ ~ ~ #bb:can_raycast run function cartographer_mob_abilities:charge/laser/raycast