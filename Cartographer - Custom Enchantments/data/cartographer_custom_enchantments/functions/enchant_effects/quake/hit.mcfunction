scoreboard players add $quake_mob ca.ench_var 1


#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

#Statuses!
function cartographer_custom_statuses:apply_effects/apply/create_aec
function cartographer_custom_statuses:apply_status/apply/set_statuses

#Do the damage
execute store result storage cartographer:macro.custom_enchantments damage double 0.1 run scoreboard players get $damage ca.quake
function cartographer_custom_enchantments:enchant_effects/quake/enchant_damage_bypass with storage cartographer:macro.custom_enchantments


#Run On Hit Enchantments
execute at @s run function cartographer_custom_enchantments:enchant_effects/on_hit/melee_master


execute at @s positioned ~ ~-0.3 ~ run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force

function #minecraft:cartographer/events/enchants_mob_hit/passive/quake

scoreboard players set @s ca.quake_time 105
tag @s add ca.quaked

#Random Crit Vfx
execute if score $success ca.attr_random_crit matches 1.. run function cartographer_custom_enchantments:attribute_effects/random_crit/vfx