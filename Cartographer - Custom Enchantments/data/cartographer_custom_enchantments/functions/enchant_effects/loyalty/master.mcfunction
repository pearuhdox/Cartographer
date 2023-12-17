function #minecraft:cartographer/events/enchantments/ranged/loyalty

#Check if the player has hydraulic
scoreboard players set $hydraulic ca.loyalty 0
scoreboard players operation $hydraulic ca.loyalty = @s ca.hydraulic

scoreboard players set $collapse ca.loyalty 0
execute if score @s ca.collapse matches 1 run scoreboard players set $collapse ca.loyalty 1

#Find the nearest trident in front of the player's view, we want to image it and store it
execute anchored eyes positioned ^ ^ ^3 as @e[type=trident,limit=1,sort=nearest,distance=..4,tag=!loyalty_checked] at @s run function cartographer_custom_enchantments:enchant_effects/loyalty/save_trident

#Package the loyalty item based on score
function cartographer_custom_enchantments:enchant_effects/loyalty/package

execute unless score @s ca.loyalty_time matches 1.. run scoreboard players set @s ca.loyalty_time 1