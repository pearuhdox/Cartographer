tag @s add checked
scoreboard players set @s ca.raycast 4
function cartographer_mob_abilities:charge/rift/spot_recurse

execute store result score @s ca.lifetime run data get entity @s WaitTime