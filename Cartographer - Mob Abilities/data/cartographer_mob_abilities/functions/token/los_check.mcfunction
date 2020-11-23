summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["los_check_stand"]} 
tp @e[type=armor_stand,distance=..1,tag=los_check_stand] ~ ~ ~ facing entity @a[limit=1,tag=los_target,sort=nearest] feet
scoreboard players set @e[type=armor_stand,distance=..1,tag=los_check_stand] helper_raycast 20
execute as @e[type=armor_stand,distance=..1,tag=los_check_stand] at @s run execute positioned ~ ~1 ~ run function cartographer_mob_abilities:token/raycast_los
kill @e[type=armor_stand,distance=..1,tag=los_check_stand]