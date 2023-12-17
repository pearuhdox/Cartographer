function #minecraft:cartographer/events/enchantments/ranged/overcharge

scoreboard players operation $lvl ca.concentration = @s ca.concentration
scoreboard players operation $stacks ca.concentration = @s ca.concentrate_stack

#playsound minecraft:item.crossbow.shoot player @s ~ ~ ~ 0.7 0.75
#execute positioned ~ ~1.4 ~ run particle minecraft:wax_off ^ ^ ^1 0.2 0.2 0.2 1 5 normal

execute as @s at @s run function cartographer_custom_enchantments:enchant_effects/concentration/branch

scoreboard players set @s ca.draw_bow_time 0