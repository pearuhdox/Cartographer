kill @e[type=arrow,limit=3,sort=nearest]

summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deadeye_aim"]}

tp @e[tag=deadeye_aim,limit=1,sort=nearest] ~ ~ ~ ~ ~

tp @e[tag=deadeye_aim,limit=1,sort=nearest] ~ ~ ~ facing entity @e[limit=1,type=#cartographer_core:hostile,distance=..10,sort=random,nbt={HurtTime:0s}] feet

scoreboard players set @e[tag=deadeye_aim,limit=1,sort=nearest] helper_raycast 10

execute as @e[tag=deadeye_aim,limit=1,sort=nearest] at @s positioned ~ ~1.2 ~ run function cartographer_custom_enchantments:loop/enchant_effects/deadeye_raycast
