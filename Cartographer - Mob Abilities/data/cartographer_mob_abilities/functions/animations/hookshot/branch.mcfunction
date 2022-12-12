tp @s ~ ~ ~ facing entity @p feet
scoreboard players set @s ca.raycast 14
execute if score @s ability_charge matches 1 anchored eyes facing entity @p eyes positioned ^ ^ ^ run function cartographer_mob_abilities:animations/hookshot/raycast