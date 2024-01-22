scoreboard players add $momentum_mob ca.ench_var 1

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

#Statuses!
execute at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute at @s run function cartographer_custom_statuses:apply_status/apply/set_statuses

execute if entity @s[nbt={HurtTime:0s}] run function cartographer_custom_enchantments:enchant_effects/momentum/damage

#Run Fire Aspect (after Cauterize)
execute if score $fire_aspect ca.momentum matches 1 as @s run data modify entity @s Fire set value 81
execute if score $fire_aspect ca.momentum matches 2 as @s run data modify entity @s Fire set value 161
execute if score $fire_aspect ca.momentum matches 3 as @s run data modify entity @s Fire set value 241
execute if score $fire_aspect ca.momentum matches 4 as @s run data modify entity @s Fire set value 321
execute if score $fire_aspect ca.momentum matches 5.. as @s run data modify entity @s Fire set value 401

#Executioner
scoreboard players operation $lvl ca.executioner = $executioner ca.momentum
execute if score $executioner ca.momentum matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/executioner/branch


execute at @s positioned ~ ~0.1 ~ run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0 5 normal

#Random Crit Vfx
execute if score $success ca.attr_random_crit matches 1.. run function cartographer_custom_enchantments:attribute_effects/random_crit/vfx

function #minecraft:cartographer/events/enchants_mob_hit/passive/momentum