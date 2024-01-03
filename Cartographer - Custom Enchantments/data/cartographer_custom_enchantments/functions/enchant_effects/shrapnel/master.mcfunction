scoreboard players set $shrapnel_hit ca.shrapnel 0

execute unless score $ranged_damage ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/shrapnel/calculate_normal
execute if score $ranged_damage ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/shrapnel/calculate_custom

scoreboard players set $percent ca.shrapnel 25
scoreboard players operation $percent ca.shrapnel *= $shrapnel ca.var

scoreboard players operation $damage ca.shrapnel *= $percent ca.shrapnel
scoreboard players operation $damage ca.shrapnel /= $100 ca.CONSTANT


execute on attacker run tag @s add ca.shrapnel_player

execute positioned ~ ~1.25 ~ facing entity @p[tag=ca.shrapnel_player] feet rotated ~ 0 facing ^ ^ ^-5 run function cartographer_custom_enchantments:enchant_effects/shrapnel/raycast_start
execute positioned ~ ~1.25 ~ facing entity @p[tag=ca.shrapnel_player] feet rotated ~ 0 facing ^1 ^ ^-5 run function cartographer_custom_enchantments:enchant_effects/shrapnel/raycast_start
execute positioned ~ ~1.25 ~ facing entity @p[tag=ca.shrapnel_player] feet rotated ~ 0 facing ^-1 ^ ^-5 run function cartographer_custom_enchantments:enchant_effects/shrapnel/raycast_start
execute positioned ~ ~1.25 ~ facing entity @p[tag=ca.shrapnel_player] feet rotated ~ 0 facing ^2 ^ ^-5 run function cartographer_custom_enchantments:enchant_effects/shrapnel/raycast_start
execute positioned ~ ~1.25 ~ facing entity @p[tag=ca.shrapnel_player] feet rotated ~ 0 facing ^-2 ^ ^-5 run function cartographer_custom_enchantments:enchant_effects/shrapnel/raycast_start

tag @e[distance=..10,type=#bb:hostile] remove ca.shrapnel_hit

tag @s remove ca.shrapnel_player