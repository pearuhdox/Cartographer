particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 0.15 1 normal @a

#execute if entity @s[scores={ca.lifetime=1..30}] run tp @s ~ ~0.5 ~

execute unless entity @s[scores={ca.lifetime=40..}] run tp @s ~ ~0.05 ~ ~2 ~
scoreboard players add @s ca.lifetime 1

execute if entity @s[scores={ca.lifetime=40..}] unless entity @e[type=armor_stand,tag=exalted_weapon,sort=nearest,limit=1,distance=..0.5] anchored eyes facing entity @e[type=armor_stand,tag=exalted_weapon,sort=nearest,limit=1,distance=0.4..] feet positioned ^ ^ ^0.75 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.25 ~ ~

execute unless entity @e[type=sheep,tag=exalted_soul_hitbox,distance=..1] run playsound minecraft:item.totem.use hostile @a[distance=..12] ~ ~ ~ 0.3 2 
execute unless entity @e[type=sheep,tag=exalted_soul_hitbox,distance=..1] run playsound minecraft:block.bell.use hostile @a[distance=..12] ~ ~ ~ 0.3 2 
execute unless entity @e[type=sheep,tag=exalted_soul_hitbox,distance=..1] run particle minecraft:cloud ~ ~1 ~ 0.2 0.2 0.2 0.2 50 normal
execute unless entity @e[type=sheep,tag=exalted_soul_hitbox,distance=..1] run kill @s

execute if score @s exalted matches 90.. as @e[type=armor_stand,tag=exalted_weapon,distance=..0.5] at @s store result score $exalted_type exalted run data get entity @s HandItems[0].tag.EntityType
execute if score @s exalted matches 90.. if entity @e[type=armor_stand,tag=exalted_weapon,distance=..0.5] run kill @e[type=sheep,tag=exalted_soul_hitbox,distance=..0.5]
execute if score @s exalted matches 90.. as @e[type=armor_stand,tag=exalted_weapon,distance=..0.5] at @s run function cartographer_mob_abilities:passive/exalted_resummon
execute if score @s exalted matches 90.. if entity @e[type=armor_stand,tag=exalted_weapon,distance=..0.5] run kill @s

execute if score @s exalted matches 1 run playsound minecraft:block.portal.ambient hostile @a[distance=..15] ~ ~ ~ 0.5 1.5
execute if score @s exalted matches 46 run playsound minecraft:block.portal.ambient hostile @a[distance=..15] ~ ~ ~ 2 2

execute if entity @e[type=armor_stand,tag=exalted_weapon,distance=..0.5] run scoreboard players add @s exalted 1
execute if entity @e[type=armor_stand,tag=exalted_weapon,distance=..0.5] run particle minecraft:poof ~ ~1 ~ 0 0 0 0.1 1 normal