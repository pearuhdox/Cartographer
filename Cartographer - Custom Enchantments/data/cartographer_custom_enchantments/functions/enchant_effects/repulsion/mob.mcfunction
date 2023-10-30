scoreboard players set $repulsion_mob ca.ench_var 1

scoreboard players set @s co_y 4
scoreboard players set @s co_send -7

execute unless entity @s[tag=ca.boss] if score $knockback ca.repulsion matches 1 run scoreboard players set @s co_send -11
execute unless entity @s[tag=ca.boss] if score $knockback ca.repulsion matches 2 run scoreboard players set @s co_send -17
execute unless entity @s[tag=ca.boss] if score $knockback ca.repulsion matches 3 run scoreboard players set @s co_send -22
execute unless entity @s[tag=ca.boss] if score $knockback ca.repulsion matches 4 run scoreboard players set @s co_send -30
execute unless entity @s[tag=ca.boss] if score $knockback ca.repulsion matches 5.. run scoreboard players set @s co_send -39

execute at @s run function motion:motion/push

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

#Run Cauterize if it exists
execute if score $cauterize ca.repulsion matches 1 as @s at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/other

#Run Fire Aspect (after Cauterize)
execute if score $fire_aspect ca.repulsion matches 1 as @s run data modify entity @s Fire set value 81
execute if score $fire_aspect ca.repulsion matches 2 as @s run data modify entity @s Fire set value 161
execute if score $fire_aspect ca.repulsion matches 3 as @s run data modify entity @s Fire set value 241
execute if score $fire_aspect ca.repulsion matches 4 as @s run data modify entity @s Fire set value 321
execute if score $fire_aspect ca.repulsion matches 5.. as @s run data modify entity @s Fire set value 401

#Frostbite
scoreboard players operation $fb ca.frostbite = $frostbite ca.repulsion
execute if score $frostbite ca.repulsion matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/frostbite/branch

#Executioner
scoreboard players operation $exec ca.executioner = $executioner ca.repulsion
execute if score $executioner ca.repulsion matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/executioner/branch

#Statuses!
execute at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute at @s run function cartographer_custom_statuses:apply_status/apply/set_statuses


execute at @s positioned ~ ~-0.3 ~ run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force

function #minecraft:cartographer/events/enchants_mob_hit/passive/repulsion

scoreboard players set @s ca.repulsion_time 105