scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..3,sort=nearest] helper_lifetime 1

#Apply Flash Constant to the arrow.
execute as @e[type=#cartographer_core:arrow,limit=3,sort=nearest,scores={helper_lifetime=1}] at @s run function cartographer_custom_enchantments:enchant_effects/flash_calc