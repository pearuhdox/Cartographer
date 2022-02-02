#This function attempts to find a player in Line of Sight. If a player is found in line of sight, it sets this properly. Line of sight is determined by an enemy's follow range stat.

execute run tp 002f80c0-0001-f879-0000-009c001e7bfc ~ ~ ~ facing entity @p[gamemode=!spectator,gamemode=!creative,nbt=!{ActiveEffects:[{Id:14b}]}] feet

execute store result score @s sight_dist run attribute @s minecraft:generic.follow_range get

scoreboard players operation 002f80c0-0001-f879-0000-009c001e7bfc ca.raycast = @s sight_dist
execute as 002f80c0-0001-f879-0000-009c001e7bfc at @s positioned ~ ~1 ~ run function cartographer_mob_abilities:helper/los_check/raycast

tag @s add los_checked

#say doing line of sight check

#debug glowing
#execute if entity @s[tag=can_see_player] run effect give @s glowing 1 0 true