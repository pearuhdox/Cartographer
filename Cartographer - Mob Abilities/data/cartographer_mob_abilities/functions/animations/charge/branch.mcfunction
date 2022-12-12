execute if score @s ability_charge matches 1 run tp @s ~ ~ ~ facing entity @p feet

scoreboard players set @s ca.raycast 22
execute if score @s ability_charge matches 1 facing entity @p feet positioned ^ ^1 ^ run function cartographer_mob_abilities:animations/charge/raycast