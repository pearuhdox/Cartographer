particle minecraft:smoke ~ ~ ~ 0.75 0.75 0.75 0.05 50 normal

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute if entity @a[distance=..2] as @a[distance=..2] run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;0]},{Type:0,Colors:[I;0]},{Type:0,Colors:[I;0]}]}}}}

tp @s ^ ^ ^1

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/charge_raycast