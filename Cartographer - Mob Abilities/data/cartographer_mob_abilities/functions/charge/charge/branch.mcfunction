execute unless score @s ability_charge matches 1.. run tp @s ~ ~ ~ facing entity @p feet

scoreboard players set @s ca.raycast 24
execute unless score @s ability_charge matches 1.. positioned ~ ~1 ~ facing entity @p feet rotated ~ ~-10 run function cartographer_mob_abilities:charge/charge/raycast
execute if score @s ability_charge matches 1.. positioned ~ ~1 ~ run function cartographer_mob_abilities:charge/charge/raycast