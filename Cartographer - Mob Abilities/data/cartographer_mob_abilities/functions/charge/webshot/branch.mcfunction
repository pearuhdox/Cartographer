tp @s ~ ~ ~ facing entity @p feet

scoreboard players set @s ca.raycast 13
execute unless score @s ability_charge matches 1.. anchored eyes facing entity @p feet rotated ~ ~-10 run function cartographer_mob_abilities:charge/webshot/raycast