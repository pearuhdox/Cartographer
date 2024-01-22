scoreboard players set $gravity_mob ca.ench_var 1

scoreboard players set @s co_send -4
scoreboard players set @s co_y 4
execute unless score $knockback ca.weapon_var matches 1.. run function motion:motion/push

#Statuses!
function cartographer_custom_statuses:apply_effects/apply/create_aec
function cartographer_custom_statuses:apply_status/apply/set_statuses

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

#Do the damage
execute store result storage cartographer:macro.custom_enchantments damage double 0.1 run scoreboard players get $mob_dmg ca.gravity_fall
function cartographer_custom_enchantments:enchant_effects/gravity/enchant_damage_bypass with storage cartographer:macro.custom_enchantments

#Run On Hit Enchantments
function cartographer_custom_enchantments:enchant_effects/on_hit/melee_master


function #minecraft:cartographer/events/enchants_mob_hit/passive/gravity

#Random Crit Vfx
execute if score $success ca.attr_random_crit matches 1.. run function cartographer_custom_enchantments:attribute_effects/random_crit/vfx