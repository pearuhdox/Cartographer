execute at @p[scores={ca.hooked=1..},distance=..1.5] facing entity @e[type=#bb:hostile,scores={ca.hooked=1..},tag=ca.hookshot,limit=1,sort=nearest] feet rotated ~ 0 run tp @s ^ ^ ^-0.4 facing entity @e[type=#bb:hostile,scores={ca.hooked=1..},tag=ca.hookshot,limit=1,sort=nearest]

particle minecraft:block minecraft:chain ^ ^1 ^4 0 0 0 0 1 normal
particle minecraft:block minecraft:chain ^ ^1 ^0.33 0 0 0 0 1 normal
particle minecraft:block minecraft:chain ^ ^1 ^0.66 0 0 0 0 1 normal

particle minecraft:block minecraft:chain ^ ^1 ^1 0 0 0 0 1 normal
particle minecraft:block minecraft:chain ^ ^1 ^1.33 0 0 0 0 1 normal
particle minecraft:block minecraft:chain ^ ^1 ^1.66 0 0 0 0 1 normal

particle minecraft:block minecraft:chain ^ ^1 ^2 0 0 0 0 1 normal
particle minecraft:block minecraft:chain ^ ^1 ^2.33 0 0 0 0 1 normal
particle minecraft:block minecraft:chain ^ ^1 ^2.66 0 0 0 0 1 normal

particle minecraft:block minecraft:chain ^ ^1 ^3 0 0 0 0 1 normal
particle minecraft:block minecraft:chain ^ ^1 ^3.33 0 0 0 0 1 normal
particle minecraft:block minecraft:chain ^ ^1 ^3.66 0 0 0 0 1 normal

scoreboard players add @s ca.hook_despawn 1

execute if score @s ca.hook_despawn matches 105.. run tp @s ~ -200 ~