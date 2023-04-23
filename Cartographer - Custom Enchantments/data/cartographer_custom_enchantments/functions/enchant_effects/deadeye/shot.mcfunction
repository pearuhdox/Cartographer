#TODO - FIX PIERCING

scoreboard players remove @s ca.deadeye_time 1

tp @s ^ ^ ^6

execute positioned ^ ^ ^ run function cartographer_custom_enchantments:enchant_effects/deadeye/hit_check
execute positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchant_effects/deadeye/hit_check
execute positioned ^ ^ ^2 run function cartographer_custom_enchantments:enchant_effects/deadeye/hit_check

#Reduce damage for point blank
execute if score @s ca.point_blank matches 1.. if score @s ca.damage_queue matches 7.. run scoreboard players operation @s ca.damage_queue -= @s ca.point_blank
execute if score @s ca.point_blank matches 1.. if score @s ca.damage_queue matches 7.. run scoreboard players remove @s ca.damage_queue 1

execute positioned ^ ^ ^3 run function cartographer_custom_enchantments:enchant_effects/deadeye/hit_check
execute positioned ^ ^ ^4 run function cartographer_custom_enchantments:enchant_effects/deadeye/hit_check
execute positioned ^ ^ ^5 run function cartographer_custom_enchantments:enchant_effects/deadeye/hit_check





#Reduce more damage for point blank
execute if score @s ca.point_blank matches 1.. if score @s ca.damage_queue matches 7.. run scoreboard players operation @s ca.damage_queue -= @s ca.point_blank
execute if score @s ca.point_blank matches 1.. if score @s ca.damage_queue matches 7.. run scoreboard players remove @s ca.damage_queue 1

execute if score @s ca.deadeye_time matches 1 run kill @s