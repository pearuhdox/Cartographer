function #minecraft:cartographer/events/enchantments/ranged/overcharge

scoreboard players operation $ranged ca.focus = @s ca.focus
scoreboard players operation $ranged ca.focus *= $10 ca.CONSTANT
scoreboard players add $ranged ca.focus 100

playsound minecraft:item.crossbow.shoot player @s ~ ~ ~ 0.7 0.75
execute positioned ~ ~1.4 ~ run particle minecraft:wax_off ^ ^ ^1 0.2 0.2 0.2 1 5 normal

scoreboard players set @s ca.ov_tier 0

scoreboard players operation $damage catt.var = @s catt.stat.range

execute as @e[type=arrow,sort=nearest,limit=3,distance=..5] at @s run function cartographer_custom_enchantments:enchant_effects/focus/branch

scoreboard players set @s ca.draw_bow_time 0