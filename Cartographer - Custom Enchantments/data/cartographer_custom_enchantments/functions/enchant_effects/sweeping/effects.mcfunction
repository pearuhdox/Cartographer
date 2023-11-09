execute if score $do_apply_effects ca.status_var matches 1.. at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute if score $do_apply_status ca.status_var matches 1.. at @s run function cartographer_custom_statuses:apply_status/apply/set_statuses

say sweeping

$damage @s $(damage) cartographer_custom_enchantments:enchant_damage by @p[scores={ca.sweeping=1..}]

scoreboard players set @s co_y 2
scoreboard players set @s co_send -5

function motion:motion/push

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

#Run Cauterize if it exists
execute if score $cauterize ca.sweeping matches 1 as @s at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/other

#Run Fire Aspect (after Cauterize)
execute if score $fire_aspect ca.sweeping matches 1 as @s run data modify entity @s Fire set value 81
execute if score $fire_aspect ca.sweeping matches 2 as @s run data modify entity @s Fire set value 161
execute if score $fire_aspect ca.sweeping matches 3 as @s run data modify entity @s Fire set value 241
execute if score $fire_aspect ca.sweeping matches 4 as @s run data modify entity @s Fire set value 321
execute if score $fire_aspect ca.sweeping matches 5.. as @s run data modify entity @s Fire set value 401

#Frostbite
scoreboard players operation $fb ca.frostbite = $frostbite ca.sweeping
execute if score $frostbite ca.sweeping matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/frostbite/branch

#Executioner
scoreboard players operation $exec ca.executioner = $executioner ca.sweeping
execute if score $executioner ca.sweeping matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/executioner/branch

#scoreboard players set $melee ca.melee_chance 0

function #minecraft:cartographer/events/enchants_mob_hit/melee/sweeping

tag @s add thrusted