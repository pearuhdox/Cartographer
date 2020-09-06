scoreboard players set @s cooldown 10

scoreboard players set @s ability_charge 0

effect give @s slowness 1 6 true

execute as @a[gamemode=survival,distance=..8] at @s run summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;1698047]},{Type:0,Colors:[I;1698047]},{Type:0,Colors:[I;1698047]}]}}}}

execute if entity @a[gamemode=survival,distance=..8] run effect give @s[type=#cartographer_core:undead] instant_damage 1 1
execute if entity @a[gamemode=survival,distance=..8] run effect give @s[type=!#cartographer_core:undead] instant_health 1 1
execute if entity @a[gamemode=survival,distance=..8] run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0.05 10

playsound minecraft:entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 2 0.5

particle minecraft:soul_fire_flame ~ ~ ~ 4 0.2 4 0.1 250 normal @a
particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.2 30 normal @a

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 4
tag @s remove tokened