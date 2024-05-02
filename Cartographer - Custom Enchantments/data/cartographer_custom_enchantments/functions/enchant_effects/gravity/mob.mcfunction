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

#Statuses!
function cartographer_custom_statuses:apply_effects/apply/create_aec
function cartographer_custom_statuses:apply_status/apply/set_statuses

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue


#Do the damage
execute store result storage cartographer:macro.custom_enchantments damage double 0.1 run scoreboard players get $mob_dmg ca.gravity_fall
#execute unless entity @s[nbt={HurtTime:0s}] run function cartographer_custom_enchantments:enchant_effects/gravity/enchant_damage_bypass with storage cartographer:macro.custom_enchantments
function cartographer_custom_enchantments:enchant_effects/gravity/enchant_damage_bypass with storage cartographer:macro.custom_enchantments

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


function #minecraft:cartographer/events/enchants_mob_hit/passive/gravity