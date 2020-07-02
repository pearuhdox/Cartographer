particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.15 0.15 0.15 1 3 normal

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute if entity @a[distance=..1.5] run scoreboard players set @s helper_raycast 0

execute if entity @s[scores={helper_raycast=1..}] positioned ^ ^ ^1 if block ~ ~ ~ #cartographer_core:can_raycast run function cartographer_mob_abilities:abilities/laser_raycast

execute if entity @a[distance=..2] as @a[distance=..2] run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16777215]},{Type:0,Colors:[I;16777215]},{Type:0,Colors:[I;16777215]},{Type:0,Colors:[I;16777215]},{Type:0,Colors:[I;16777215]}]}}}}