scoreboard players add $quake_mob ca.ench_var 1


#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

#Statuses!
function cartographer_custom_statuses:apply_effects/apply/create_aec
function cartographer_custom_statuses:apply_status/apply/set_statuses

execute if score $quake_lvl ca.quake matches 1 run damage @s 1 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $quake_lvl ca.quake matches 2 run damage @s 2 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $quake_lvl ca.quake matches 3 run damage @s 3 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $quake_lvl ca.quake matches 4 run damage @s 4 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $quake_lvl ca.quake matches 5 run damage @s 5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $quake_lvl ca.quake matches 6 run damage @s 6 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $quake_lvl ca.quake matches 7 run damage @s 7 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $quake_lvl ca.quake matches 8 run damage @s 8 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $quake_lvl ca.quake matches 9 run damage @s 9 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $quake_lvl ca.quake matches 10.. run damage @s 10 cartographer_custom_enchantments:enchant_damage_bypass by @p

#Run On Hit Enchantments
execute at @s run function cartographer_custom_enchantments:enchant_effects/on_hit/melee_master


execute at @s positioned ~ ~-0.3 ~ run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force

function #minecraft:cartographer/events/enchants_mob_hit/passive/quake

scoreboard players set @s ca.quake_time 105
tag @s add ca.quaked