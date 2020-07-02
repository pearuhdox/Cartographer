scoreboard players set @s cooldown 10

scoreboard players set @s ability_charge 0

execute as @s at @s positioned ^ ^ ^5 run particle minecraft:cloud ~ ~0.2 ~ 1.5 0 1.5 0.2 50

execute as @s at @s positioned ^ ^ ^3 run particle minecraft:cloud ~ ~0.2 ~ 1.2 0 1.2 0.2 30

playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 2 0.75

execute as @s at @s positioned ^ ^ ^5 run execute if entity @a[distance=..3] as @a[distance=..3] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16777215]}]}}}}

execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2] as @a[distance=..2] at @s run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16777215]}]}}}}

execute as @s at @s positioned ^ ^ ^5 run execute if entity @a[distance=..3] as @a[distance=..3] at @s run effect give @s slowness 4 2

execute as @s at @s positioned ^ ^ ^3 run execute if entity @a[distance=..2] as @a[distance=..2] at @s run effect give @s slowness 4 2


#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 4
tag @s remove tokened