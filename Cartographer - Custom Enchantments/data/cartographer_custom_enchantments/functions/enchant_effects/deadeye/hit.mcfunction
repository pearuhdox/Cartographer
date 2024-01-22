scoreboard players set $hit ca.deadeye 1

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

#Do the damage
execute store result storage cartographer:macro.custom_enchantments damage double 0.1 run scoreboard players get $damage ca.deadeye
function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass with storage cartographer:macro.custom_enchantments

#Statuses!
function cartographer_custom_statuses:apply_effects/apply/create_aec
function cartographer_custom_statuses:apply_status/apply/set_statuses

#Run On Hit Enchantments
function cartographer_custom_enchantments:enchant_effects/on_hit/ranged_master

#Random Crit Vfx
execute if score $success ca.attr_random_crit matches 1.. run function cartographer_custom_enchantments:attribute_effects/random_crit/vfx

tag @s add ca.deadeye_hit