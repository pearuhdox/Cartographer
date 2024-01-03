execute if score $flame ca.deadeye matches 1.. run data modify entity @s Fire set value 81

scoreboard players operation $punch ca.var = $punch ca.deadeye
execute if score $punch ca.deadeye matches 1.. run function cartographer_custom_enchantments:enchant_effects/punch/effect


scoreboard players set @s ca.damage_queue 0
scoreboard players set $ranged_damage ca.var 0
scoreboard players operation $ranged_damage ca.var = $attr_ranged ca.deadeye

damage @s 0.001 cartographer_custom_enchantments:enchant_damage_bypass by @p[tag=ca.deadeye_owner]
scoreboard players operation $point_blank ca.var = $point_blank ca.deadeye
execute if score $point_blank ca.deadeye matches 1.. run function cartographer_custom_enchantments:enchant_effects/point_blank/player_test

scoreboard players operation $sharpshot ca.var = $sharpshot ca.deadeye
execute if score $sharpshot ca.deadeye matches 1.. run function cartographer_custom_enchantments:enchant_effects/sharpshot/player_test

execute if score $attr_ranged ca.deadeye matches 1.. run function cartographer_custom_enchantments:enchant_effects/deadeye/damage/custom
execute unless score $attr_ranged ca.deadeye matches 1.. run function cartographer_custom_enchantments:enchant_effects/deadeye/damage/normal

execute if score $concentration ca.deadeye matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/concentration/stack

#Statuses!
function cartographer_custom_statuses:apply_effects/apply/create_aec
function cartographer_custom_statuses:apply_status/apply/set_statuses

scoreboard players set $deadeye_hit ca.deadeye 1

scoreboard players operation @s ca.damage_queue += $deadeye ca.damage_queue

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

#Run On Hit Enchantments
function cartographer_custom_enchantments:enchant_effects/on_hit/ranged_master

function cartographer_custom_enchantments:helper/damage/macro_setup
function cartographer_custom_enchantments:enchant_effects/deadeye/enchant_damage_bypass with storage cartographer:macro.custom_enchantments

scoreboard players set @s ca.deadeye_time 2