particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 0.15 1 normal @a

#execute if entity @s[scores={ca.lifetime=1..30}] run tp @s ~ ~0.5 ~

execute unless entity @s[scores={ca.lifetime=40..}] run tp @s ~ ~0.05 ~ ~2 ~
scoreboard players add @s ca.lifetime 1

execute if entity @s[scores={ca.lifetime=40..}] unless entity @e[type=armor_stand,tag=exalted_weapon,sort=nearest,limit=1,distance=..0.5] anchored eyes facing entity @e[type=armor_stand,tag=exalted_weapon,sort=nearest,limit=1,distance=0.4..] feet positioned ^ ^ ^0.75 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.25 ~ ~

execute unless entity @e[type=sheep,tag=exalted_soul_hitbox,distance=..1] run function cartographer_mob_abilities:passive/exalted/soul_branch

execute if score @s exalted matches 90.. run function cartographer_mob_abilities:passive/exalted/resummon_branch

execute if score @s exalted matches 1 run playsound minecraft:block.portal.ambient hostile @a[distance=..15] ~ ~ ~ 0.5 1.5
execute if score @s exalted matches 46 run playsound minecraft:block.portal.ambient hostile @a[distance=..15] ~ ~ ~ 2 2

execute if entity @e[type=armor_stand,tag=exalted_weapon,distance=..0.5] run function cartographer_mob_abilities:passive/exalted/resummon/if_branch