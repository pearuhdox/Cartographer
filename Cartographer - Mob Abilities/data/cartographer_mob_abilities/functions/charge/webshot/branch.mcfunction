tp @s ~ ~ ~ facing entity @p feet
scoreboard players set @s helper_raycast 13
execute positioned ~ ~1 ~ run function cartographer_mob_abilities:charge/webshot_raycast