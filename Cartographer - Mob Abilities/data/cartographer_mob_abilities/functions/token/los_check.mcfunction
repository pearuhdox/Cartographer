summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["los_check_stand"]} 
tp @e[tag=los_check_stand] ~ ~ ~ facing entity @a[limit=1,tag=los_target] feet
scoreboard players set @e[tag=los_check_stand] helper_raycast 20
execute as @e[tag=los_check_stand] at @s run execute positioned ~ ~1 ~ run function cartographer_mob_abilities:token/raycast_los
kill @e[tag=los_check_stand]