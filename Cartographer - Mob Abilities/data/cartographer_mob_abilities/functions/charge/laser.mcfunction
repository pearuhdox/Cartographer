execute unless entity @s[scores={ability_charge=120}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=1}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["laser_marker","ability_marker"]}

execute if entity @s[scores={ability_charge=1..119}] run effect give @s glowing 1 0 true

execute if entity @s[scores={ability_charge=1..119}] run scoreboard players set @s mob_move_red 23

scoreboard players operation $laser_charge ability_charge = @s ability_charge

scoreboard players set $laser_bla ca.var 0
scoreboard players set $laser_gla ca.var 0
scoreboard players set $laser_ove ca.var 0
scoreboard players set $laser_ven ca.var 0
scoreboard players set $laser_zep ca.var 0
scoreboard players set $laser_hor ca.var 0
scoreboard players set $laser_vol ca.var 0

execute if entity @s[tag=ca.blazing] run scoreboard players set $laser_bla ca.var 1
execute if entity @s[tag=ca.glacial] run scoreboard players set $laser_gla ca.var 1
execute if entity @s[tag=ca.overloading] run scoreboard players set $laser_ove ca.var 1
execute if entity @s[tag=ca.venemous] run scoreboard players set $laser_ven ca.var 1
execute if entity @s[tag=ca.zephyrous] run scoreboard players set $laser_zep ca.var 1
execute if entity @s[tag=ca.horrifying] run scoreboard players set $laser_hor ca.var 1
execute if entity @s[tag=ca.volatile] run scoreboard players set $laser_vol ca.var 1

execute if entity @s[scores={ability_charge=1..119}] as @e[tag=laser_marker,distance=..1,limit=1] at @s run function cartographer_mob_abilities:charge/laser/branch

execute if entity @s[scores={ability_charge=1..119}] as @a[distance=..32] at @s run playsound minecraft:entity.blaze.shoot hostile @s ~ ~ ~ 0.05 2
execute if entity @s[scores={ability_charge=1}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 0.5
execute if entity @s[scores={ability_charge=20}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 0.6
execute if entity @s[scores={ability_charge=35}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 0.7
execute if entity @s[scores={ability_charge=50}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 0.8
execute if entity @s[scores={ability_charge=60}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 0.9
execute if entity @s[scores={ability_charge=70}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.0
execute if entity @s[scores={ability_charge=75}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.1
execute if entity @s[scores={ability_charge=80}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.2
execute if entity @s[scores={ability_charge=85}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.3
execute if entity @s[scores={ability_charge=88}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.4
execute if entity @s[scores={ability_charge=91}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.5
execute if entity @s[scores={ability_charge=94}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.6
execute if entity @s[scores={ability_charge=96}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.7
execute if entity @s[scores={ability_charge=98}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.8
execute if entity @s[scores={ability_charge=100}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.9
execute if entity @s[scores={ability_charge=102}] as @a[distance=..32] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 2

execute if entity @s[scores={ability_charge=120}] run function cartographer_mob_abilities:abilities/laser

