scoreboard players set $repulsion_mob ca.ench_var 1

scoreboard players set @s co_y 4
scoreboard players set @s co_send -7
execute at @s run function motion:motion/push

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

damage @s 1 cartographer_custom_enchantments:enchant_damage_bypass by @p

#Run On Hit Enchantments
execute at @s run function cartographer_custom_enchantments:enchant_effects/on_hit/melee_master

#Statuses!
execute at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute at @s run function cartographer_custom_statuses:apply_status/apply/set_statuses


execute at @s positioned ~ ~-0.3 ~ run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force

function #minecraft:cartographer/events/enchants_mob_hit/passive/repulsion

scoreboard players set @s ca.repulsion_time 105