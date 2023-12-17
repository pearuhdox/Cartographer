#These effects activate when a ranged attack is made via bow, crossbow, or trident. They are made at the player.
scoreboard players set $throw_trident ca.ench_var 0


#Multishot - Specifically for Tridents, Must go First
execute if score @s ca.multishot matches 1.. at @s if score @s ca.hold_tri_time matches 10.. run function cartographer_custom_enchantments:enchant_effects/multishot/trident/player

#Do all ranged checks.
function cartographer_custom_enchantments:enchant_effects/apply_ranged_tags_trident

#Hydraulic
execute if score $throw_trident ca.ench_var matches 1.. as @s[scores={ca.hydraulic=1..}] at @s unless score @s ca.riptide matches 1.. run function cartographer_custom_enchantments:enchant_effects/hydraulic/start

#Custom Riptide
execute if score $throw_trident ca.ench_var matches 1.. as @s[scores={ca.riptide=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/riptide/start

#Do Loyalty After
execute if score $throw_trident ca.ench_var matches 1.. as @s[scores={ca.loyalty=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/loyalty/master

#Do Wavedashing Throw
execute if score $throw_trident ca.ench_var matches 1.. as @s[scores={ca.wavedash=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/wavedash/throw

#Reset Fleetfoot
scoreboard players remove @s ca.fleetfoot_cdl 19
attribute @s minecraft:generic.movement_speed modifier remove 31-321-514-000-6151520

tag @s remove threw_trident

# Custom Ranged Damage Attribute
scoreboard players set $val ca.attr_ranged 0
execute unless score @s ca.hydraulic matches 1.. if score @s ca.attr_ranged matches 1.. if score @s ca.attr_ranged_perc matches 100 run function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/player
execute unless score @s ca.hydraulic matches 1.. unless score @s ca.attr_ranged_perc matches 100 unless score @s ca.attr_ranged matches 1.. run function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/player
execute unless score @s ca.hydraulic matches 1.. unless score @s ca.attr_ranged_perc matches 100 if score @s ca.attr_ranged matches 1.. run function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/player

# Custom Ranged Speed Attribute
scoreboard players set $val ca.attr_ranged_speed 100
execute unless score @s ca.attr_ranged_speed matches 100 run scoreboard players operation $val ca.attr_ranged_speed = @s ca.attr_ranged_speed
execute unless score @s ca.attr_ranged_speed matches 100 unless score $val ca.attr_ranged matches 1.. as @e[type=trident,tag=ca.custom_just_fired,distance=..12] at @s run function cartographer_custom_enchantments:attribute_effects/ranged_speed/increase_speed
execute unless score @s ca.attr_ranged_speed matches 100 if score $val ca.attr_ranged matches 1.. as @e[type=snowball,tag=ca.custom_just_fired,distance=..12] at @s run function cartographer_custom_enchantments:attribute_effects/ranged_speed/increase_speed

function #minecraft:cartographer/events/player_throw_trident

tag @e[type=trident,tag=ca.custom_just_fired,distance=..12] remove ca.custom_just_fired