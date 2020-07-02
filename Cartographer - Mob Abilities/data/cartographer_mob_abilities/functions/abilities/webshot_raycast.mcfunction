particle minecraft:block minecraft:cobweb ~ ~ ~ 0.3 0.3 0.3 0 30 normal

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute if entity @a[distance=..1.5] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/webshot_raycast

execute if entity @a[distance=..2] as @a[distance=..2] run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16777215]}]}}}}

execute if entity @a[distance=..2] as @a[distance=..2] at @s run setblock ~ ~ ~ minecraft:cobweb keep

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/webshot_raycast