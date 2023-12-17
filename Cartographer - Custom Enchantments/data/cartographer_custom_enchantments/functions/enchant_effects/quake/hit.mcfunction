scoreboard players add $quake_mob ca.ench_var 1

execute if entity @s[type=silverfish] run scoreboard players set @s co_y 5
execute if entity @s[type=endermite] run scoreboard players set @s co_y 5

#TODO: KBR SCALING

execute unless entity @s[tag=ca.boss] if score $knockback ca.quake matches 1 run scoreboard players set @s co_send -7
execute unless entity @s[tag=ca.boss] if score $knockback ca.quake matches 2 run scoreboard players set @s co_send -11
execute unless entity @s[tag=ca.boss] if score $knockback ca.quake matches 3 run scoreboard players set @s co_send -17
execute unless entity @s[tag=ca.boss] if score $knockback ca.quake matches 4 run scoreboard players set @s co_send -22
execute unless entity @s[tag=ca.boss] if score $knockback ca.quake matches 5.. run scoreboard players set @s co_send -30

execute at @s run function motion:motion/push

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

#Run Cauterize if it exists
execute if score $cauterize ca.quake matches 1 as @s at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/other

#Run Fire Aspect (after Cauterize)
execute if score $fire_aspect ca.quake matches 1 as @s run data modify entity @s Fire set value 81
execute if score $fire_aspect ca.quake matches 2 as @s run data modify entity @s Fire set value 161
execute if score $fire_aspect ca.quake matches 3 as @s run data modify entity @s Fire set value 241
execute if score $fire_aspect ca.quake matches 4 as @s run data modify entity @s Fire set value 321
execute if score $fire_aspect ca.quake matches 5.. as @s run data modify entity @s Fire set value 401

#Executioner
scoreboard players operation $exec ca.executioner = $executioner ca.quake
execute if score $executioner ca.quake matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/executioner/branch



execute at @s positioned ~ ~-0.3 ~ run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force

function #minecraft:cartographer/events/enchants_mob_hit/passive/quake

scoreboard players set @s ca.quake_time 105
tag @s add ca.quaked