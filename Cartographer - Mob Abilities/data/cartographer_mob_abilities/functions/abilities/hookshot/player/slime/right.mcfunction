execute at @p[scores={ca.hooked=1..},distance=..1.5] facing entity @e[type=#bb:hostile,scores={ca.hooked=1..},tag=ca.hookshot,limit=1,sort=nearest] feet rotated ~ 0 run tp @s ^0.85 ^ ^0.1

scoreboard players add @s ca.hook_despawn 1

execute if score @s ca.hook_despawn matches 105.. run tp @s ~ -200 ~