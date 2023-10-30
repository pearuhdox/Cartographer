scoreboard players set $starfall_mob ca.ench_var 1

execute if entity @s[type=silverfish] run scoreboard players set @s co_y 5
execute if entity @s[type=endermite] run scoreboard players set @s co_y 5

#TODO: KBR SCALING

execute unless entity @s[tag=ca.boss] if score $knockback ca.starfall matches 1 run scoreboard players set @s co_send -7
execute unless entity @s[tag=ca.boss] if score $knockback ca.starfall matches 2 run scoreboard players set @s co_send -11
execute unless entity @s[tag=ca.boss] if score $knockback ca.starfall matches 3 run scoreboard players set @s co_send -17
execute unless entity @s[tag=ca.boss] if score $knockback ca.starfall matches 4 run scoreboard players set @s co_send -22
execute unless entity @s[tag=ca.boss] if score $knockback ca.starfall matches 5.. run scoreboard players set @s co_send -30

execute at @s run function motion:motion/push

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue


execute if score $starfall_lvl ca.starfall matches 1 run damage @s 1 cartographer_custom_enchantments:enchant_damage by @p
execute if score $starfall_lvl ca.starfall matches 2 run damage @s 2 cartographer_custom_enchantments:enchant_damage by @p
execute if score $starfall_lvl ca.starfall matches 3 run damage @s 3 cartographer_custom_enchantments:enchant_damage by @p
execute if score $starfall_lvl ca.starfall matches 4 run damage @s 4 cartographer_custom_enchantments:enchant_damage by @p
execute if score $starfall_lvl ca.starfall matches 5 run damage @s 5 cartographer_custom_enchantments:enchant_damage by @p
execute if score $starfall_lvl ca.starfall matches 6 run damage @s 6 cartographer_custom_enchantments:enchant_damage by @p
execute if score $starfall_lvl ca.starfall matches 7 run damage @s 7 cartographer_custom_enchantments:enchant_damage by @p
execute if score $starfall_lvl ca.starfall matches 8 run damage @s 8 cartographer_custom_enchantments:enchant_damage by @p
execute if score $starfall_lvl ca.starfall matches 9 run damage @s 9 cartographer_custom_enchantments:enchant_damage by @p
execute if score $starfall_lvl ca.starfall matches 10.. run damage @s 10 cartographer_custom_enchantments:enchant_damage by @p

#Run Cauterize if it exists
execute if score $cauterize ca.starfall matches 1 as @s at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/other

#Run Fire Aspect (after Cauterize)
execute if score $fire_aspect ca.starfall matches 1 as @s run data modify entity @s Fire set value 81
execute if score $fire_aspect ca.starfall matches 2 as @s run data modify entity @s Fire set value 161
execute if score $fire_aspect ca.starfall matches 3 as @s run data modify entity @s Fire set value 241
execute if score $fire_aspect ca.starfall matches 4 as @s run data modify entity @s Fire set value 321
execute if score $fire_aspect ca.starfall matches 5.. as @s run data modify entity @s Fire set value 401

#Frostbite
scoreboard players operation $fb ca.frostbite = $frostbite ca.starfall
execute if score $frostbite ca.starfall matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/frostbite/branch

#Executioner
scoreboard players operation $exec ca.executioner = $executioner ca.starfall
execute if score $executioner ca.starfall matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/executioner/branch

#Statuses!
execute at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute at @s run function cartographer_custom_statuses:apply_status/apply/set_statuses


execute at @s run particle minecraft:firework ~ ~0.5 ~ 0.25 0 0.25 0.075 15 normal
execute at @s run particle minecraft:cloud ~ ~1.5 ~ 0 2 0 0 30 normal
execute at @s run playsound minecraft:block.anvil.place player @a ~ ~ ~ 0.1 1.32
execute at @s run playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 0.5 1.5

function #minecraft:cartographer/events/enchants_mob_hit/passive/starfall

scoreboard players set @s ca.starfall_time 105
tag @s add ca.starfalled