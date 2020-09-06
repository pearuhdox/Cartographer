scoreboard players set @s cooldown 10

scoreboard players set @s ability_charge 0

effect give @s slowness 1 6 true

execute as @a[gamemode=survival,distance=..8] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16746496]},{Type:0,Colors:[I;16746496]},{Type:0,Colors:[I;16746496]}]}}}}

execute as @a[gamemode=survival,distance=..8] at @s run setblock ~ ~ ~ minecraft:fire keep

playsound minecraft:entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 2 0.5

particle minecraft:flame ~ ~ ~ 4 0.2 4 0.1 250 normal @a

particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 1 10 normal @a

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 4
tag @s remove tokened