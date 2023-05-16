scoreboard players set $gravity_mob ca.ench_var 1

scoreboard players set @s co_send -4
scoreboard players set @s co_y 4

execute if entity @s[type=silverfish] run scoreboard players set @s co_y 5
execute if entity @s[type=endermite] run scoreboard players set @s co_y 5

#TODO: KBR SCALING

execute unless entity @s[tag=ca.boss] if score $knockback ca.gravity matches 1 run scoreboard players set @s co_send -7
execute unless entity @s[tag=ca.boss] if score $knockback ca.gravity matches 2 run scoreboard players set @s co_send -11
execute unless entity @s[tag=ca.boss] if score $knockback ca.gravity matches 3 run scoreboard players set @s co_send -17
execute unless entity @s[tag=ca.boss] if score $knockback ca.gravity matches 4 run scoreboard players set @s co_send -22
execute unless entity @s[tag=ca.boss] if score $knockback ca.gravity matches 5.. run scoreboard players set @s co_send -30

function motion:motion/push

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

scoreboard players operation $mob_dmg ca.gravity_fall = $gravity_dmg ca.gravity_fall
scoreboard players operation $mob_dmg ca.gravity_fall *= $gravity_lvl ca.gravity

execute if score $mob_dmg ca.gravity_fall matches 1 run damage @s 0.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 2 run damage @s 1 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 3 run damage @s 1.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 4 run damage @s 2 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 5 run damage @s 2.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 6 run damage @s 3 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 7 run damage @s 3.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 8 run damage @s 4 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 9 run damage @s 4.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 10 run damage @s 5 cartographer_custom_enchantments:enchant_damage_bypass by @p

execute if score $mob_dmg ca.gravity_fall matches 11 run damage @s 5.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 12 run damage @s 6 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 13 run damage @s 6.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 14 run damage @s 7 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 15 run damage @s 7.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 16 run damage @s 8 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 17 run damage @s 8.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 18 run damage @s 9 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 19 run damage @s 9.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 20 run damage @s 10 cartographer_custom_enchantments:enchant_damage_bypass by @p

execute if score $mob_dmg ca.gravity_fall matches 21 run damage @s 10.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 22 run damage @s 11 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 23 run damage @s 11.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 24 run damage @s 12 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 25 run damage @s 12.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 26 run damage @s 13 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 27 run damage @s 13.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 28 run damage @s 14 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 29 run damage @s 14.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 30 run damage @s 15 cartographer_custom_enchantments:enchant_damage_bypass by @p

execute if score $mob_dmg ca.gravity_fall matches 31 run damage @s 15.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 32 run damage @s 16 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 33 run damage @s 16.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 34 run damage @s 17 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 35 run damage @s 17.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 36 run damage @s 18 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 37 run damage @s 18.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 38 run damage @s 19 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 39 run damage @s 19.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 40 run damage @s 20 cartographer_custom_enchantments:enchant_damage_bypass by @p

execute if score $mob_dmg ca.gravity_fall matches 41 run damage @s 20.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 42 run damage @s 21 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 43 run damage @s 21.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 44 run damage @s 22 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 45 run damage @s 22.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 46 run damage @s 23 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 47 run damage @s 23.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 48 run damage @s 24 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 49 run damage @s 24.5 cartographer_custom_enchantments:enchant_damage_bypass by @p
execute if score $mob_dmg ca.gravity_fall matches 50.. run damage @s 25 cartographer_custom_enchantments:enchant_damage_bypass by @p


#Run Cauterize if it exists
execute if score $cauterize ca.gravity matches 1 as @s run function cartographer_custom_enchantments:enchant_effects/cauterize/other

#Run Fire Aspect (after Cauterize)
execute if score $fire_aspect ca.gravity matches 1 as @s run data modify entity @s Fire set value 81
execute if score $fire_aspect ca.gravity matches 2 as @s run data modify entity @s Fire set value 161
execute if score $fire_aspect ca.gravity matches 3 as @s run data modify entity @s Fire set value 241
execute if score $fire_aspect ca.gravity matches 4 as @s run data modify entity @s Fire set value 321
execute if score $fire_aspect ca.gravity matches 5.. as @s run data modify entity @s Fire set value 401

#Frostbite
scoreboard players operation $fb ca.frostbite = $frostbite ca.gravity
execute if score $frostbite ca.gravity matches 1.. run function cartographer_custom_enchantments:enchant_effects/frostbite/branch

#Executioner
scoreboard players operation $exec ca.executioner = $executioner ca.gravity
execute if score $executioner ca.gravity matches 1.. run function cartographer_custom_enchantments:enchant_effects/executioner/branch

#Statuses!
function cartographer_custom_statuses:apply_effects/apply/create_aec
function cartographer_custom_statuses:status_inflict/apply/set_statuses


function #minecraft:cartographer/events/enchants_mob_hit/passive/gravity