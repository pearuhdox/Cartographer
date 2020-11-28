scoreboard players set @s cooldown 20

scoreboard players set @s ability_charge 0

effect give @e[distance=0.5..15,limit=3,sort=nearest,type=#cartographer_core:hostile] minecraft:speed 12 1

effect give @e[distance=0.5..15,limit=3,sort=nearest,type=#cartographer_core:hostile] minecraft:strength 12 1

effect give @e[distance=0.5..15,limit=3,sort=nearest,type=#cartographer_core:hostile] minecraft:resistance 12 1

execute as @e[distance=0.5..15,limit=3,sort=nearest,type=#cartographer_core:hostile] at @s run particle minecraft:dust 1 0 0 1 ~ ~1.5 ~ 0.3 0.5 0.3 0 210 normal
execute as @e[distance=0.5..15,limit=3,sort=nearest,type=#cartographer_core:hostile] at @s run particle minecraft:flame ~ ~1.5 ~ 0.2 0.2 0.2 0.05 30 normal

playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 4 1
playsound minecraft:entity.zombie.infect hostile @a[distance=..16] ~ ~ ~ 2 0.5

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 4
tag @s remove tokened