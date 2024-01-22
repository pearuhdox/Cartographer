#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

#Statuses!
execute at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute at @s run function cartographer_custom_statuses:apply_status/apply/set_statuses

#Do the damage
execute store result storage cartographer:macro.custom_enchantments damage double 0.1 run scoreboard players get $damage ca.starfall
function cartographer_custom_enchantments:enchant_effects/starfall/enchant_damage_bypass with storage cartographer:macro.custom_enchantments

#Random Crit Vfx
execute if score $success ca.attr_random_crit matches 1.. run function cartographer_custom_enchantments:attribute_effects/random_crit/vfx

#Run On Hit Enchantments
execute at @s run function cartographer_custom_enchantments:enchant_effects/on_hit/master

scoreboard players set @s ca.starfall_time 165
tag @s add ca.starfalled