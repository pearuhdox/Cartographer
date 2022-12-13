execute unless entity @s[scores={ability_charge=120}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=1}] unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if entity @s[scores={ability_charge=1..119}] unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if entity @s[scores={ability_charge=1..119}] run scoreboard players set @s mob_move_red 23

scoreboard players operation $laser_charge ability_charge = @s ability_charge

scoreboard players operation $laser_mod ability_charge = $laser_charge ability_charge
scoreboard players operation $laser_mod ability_charge %= $21 ca.CONSTANT

execute if score @s ability_charge matches 1 unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/acrobatic/run_kite/ability

execute if entity @s[tag=ca.has_kited] if score $laser_mod ability_charge matches 0 run effect give @s jump_boost 2 6 true
execute if entity @s[tag=ca.has_kited] if score $laser_mod ability_charge matches 0 run effect give @s levitation 1 0 true
execute if entity @s[tag=ca.has_kited] if score $laser_mod ability_charge matches 0 run particle minecraft:cloud ~ ~-0.5 ~ 0.3 0 0.3 0.05 15 normal

scoreboard players set $laser_bla ca.var 0
scoreboard players set $laser_gla ca.var 0
scoreboard players set $laser_ove ca.var 0
scoreboard players set $laser_ven ca.var 0
scoreboard players set $laser_zep ca.var 0
scoreboard players set $laser_hor ca.var 0
scoreboard players set $laser_vol ca.var 0
scoreboard players set $laser_web ca.var 0
scoreboard players set $laser_cur ca.var 0

execute if entity @s[tag=ca.blazing] run scoreboard players set $laser_bla ca.var 1
execute if entity @s[tag=ca.glacial] run scoreboard players set $laser_gla ca.var 1
execute if entity @s[tag=ca.overloading] run scoreboard players set $laser_ove ca.var 1
execute if entity @s[tag=ca.venemous] run scoreboard players set $laser_ven ca.var 1
execute if entity @s[tag=ca.zephyrous] run scoreboard players set $laser_zep ca.var 1
execute if entity @s[tag=ca.horrifying] run scoreboard players set $laser_hor ca.var 1
execute if entity @s[tag=ca.volatile] run scoreboard players set $laser_vol ca.var 1
execute if entity @s[tag=ca.webbing] run scoreboard players set $laser_web ca.var 1
execute if entity @s[tag=ca.cursing] run scoreboard players set $laser_cur ca.var 1

execute if entity @s[scores={ability_charge=1..119}] at @s run function cartographer_mob_abilities:animations/laser/branch

execute if entity @s[scores={ability_charge=1..119}] as @a[distance=..32] at @s run playsound minecraft:entity.blaze.shoot hostile @s ~ ~ ~ 0.05 2
execute if entity @s[scores={ability_charge=1}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 1.2 0.5
execute if entity @s[scores={ability_charge=20}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 1.2 0.6
execute if entity @s[scores={ability_charge=35}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 1.2 0.7
execute if entity @s[scores={ability_charge=50}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 1.2 0.8
execute if entity @s[scores={ability_charge=60}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 1.2 0.9
execute if entity @s[scores={ability_charge=70}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 1.2 1.0
execute if entity @s[scores={ability_charge=75}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 1.2 1.1
execute if entity @s[scores={ability_charge=80}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 0.75 1.2
execute if entity @s[scores={ability_charge=85}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 0.75 1.3
execute if entity @s[scores={ability_charge=88}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 0.75 1.4
execute if entity @s[scores={ability_charge=91}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 0.75 1.5
execute if entity @s[scores={ability_charge=94}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 0.75 1.6
execute if entity @s[scores={ability_charge=96}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 0.75 1.7
execute if entity @s[scores={ability_charge=98}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 0.75 1.8
execute if entity @s[scores={ability_charge=100}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 0.75 1.9
execute if entity @s[scores={ability_charge=102}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 0.75 2

execute if entity @s[scores={ability_charge=1}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.agitated hostile @s ~ ~ ~ 1 1.5

function cartographer_mob_abilities:loop/tick/animation

execute if entity @s[scores={ability_charge=120..}] run function cartographer_mob_abilities:abilities/laser
