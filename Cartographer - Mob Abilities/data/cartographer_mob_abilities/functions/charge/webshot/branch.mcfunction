tp @s ~ ~ ~ facing entity @p feet

scoreboard players set @s ca.raycast 13
execute positioned ~ ~1 ~ facing entity @p feet run function cartographer_mob_abilities:charge/webshot/raycast