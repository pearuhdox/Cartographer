execute unless entity @s[scores={ability_charge=120}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=1}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["laser_marker","ability_marker"]}

execute if entity @s[scores={ability_charge=1..119}] run effect give @s glowing 1 0 true

execute if entity @s[scores={ability_charge=1..119}] run effect give @s slowness 1 6 true

execute if entity @s[scores={ability_charge=1..119}] run tp @e[tag=laser_marker,distance=..1,limit=1] @s

execute if entity @s[scores={ability_charge=1..119}] run execute as @e[tag=laser_marker,distance=..1,limit=1] at @s run tp @s ~ ~ ~ facing entity @p feet

execute if entity @s[scores={ability_charge=1..119}] run execute as @e[tag=laser_marker,distance=..1,limit=1] at @s run scoreboard players set @s helper_raycast 20

execute if entity @s[scores={ability_charge=1..119}] run execute as @e[tag=laser_marker,distance=..1,limit=1] at @s run execute positioned ~ ~1 ~ run function cartographer_mob_abilities:charge/laser_raycast

execute if entity @s[scores={ability_charge=1..119}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.blaze.shoot hostile @s ~ ~ ~ 0.05 2

execute if entity @s[scores={ability_charge=1}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 0.5

execute if entity @s[scores={ability_charge=20}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 0.6

execute if entity @s[scores={ability_charge=35}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 0.7

execute if entity @s[scores={ability_charge=50}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 0.8

execute if entity @s[scores={ability_charge=60}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 0.9

execute if entity @s[scores={ability_charge=70}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.0

execute if entity @s[scores={ability_charge=75}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.1

execute if entity @s[scores={ability_charge=80}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.2

execute if entity @s[scores={ability_charge=85}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.3

execute if entity @s[scores={ability_charge=88}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.4

execute if entity @s[scores={ability_charge=91}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.5

execute if entity @s[scores={ability_charge=94}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.6

execute if entity @s[scores={ability_charge=96}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.7

execute if entity @s[scores={ability_charge=98}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.8

execute if entity @s[scores={ability_charge=100}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.9

execute if entity @s[scores={ability_charge=102}] run execute as @a[distance=..20] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 2


execute if entity @s[scores={ability_charge=120}] run function cartographer_mob_abilities:abilities/laser

