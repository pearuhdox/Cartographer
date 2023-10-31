execute run tp @s ~ ~ ~ facing entity @e[type=experience_orb,tag=erupting_xp,distance=..8,limit=1,sort=nearest] feet

scoreboard players set @s co_y 2
scoreboard players set @s co_send -5

#Do Knockback first so its all done at top of function
execute if score $eruption ca.knockback matches 1.. run scoreboard players set @s co_y 3

execute if score $eruption ca.knockback matches 1 run scoreboard players set @s co_send -8
execute if score $eruption ca.knockback matches 2 run scoreboard players set @s co_send -12
execute if score $eruption ca.knockback matches 3 run scoreboard players set @s co_send -18
execute if score $eruption ca.knockback matches 4 run scoreboard players set @s co_send -23
execute if score $eruption ca.knockback matches 5.. run scoreboard players set @s co_send -31

function motion:motion/push

#Calculate and do damage
scoreboard players set @s ca.damage_queue 3
scoreboard players operation @s ca.damage_queue *= $eruption ca.eruption

scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

execute if score $eruption ca.eruption matches 1.. as @s run function cartographer_custom_enchantments:helper/damage/macro_setup
function cartographer_custom_enchantments:helper/damage/enchant_damage with storage cartographer:macro.custom_enchantments

#Run Cauterize if it exists
execute if score $eruption ca.cauterize matches 1 as @s run function cartographer_custom_enchantments:enchant_effects/cauterize/other

#Run Fire Aspect (after Cauterize)
execute if score $eruption ca.fire_aspect matches 1 as @s run data modify entity @s Fire set value 81
execute if score $eruption ca.fire_aspect matches 2 as @s run data modify entity @s Fire set value 161
execute if score $eruption ca.fire_aspect matches 3 as @s run data modify entity @s Fire set value 241
execute if score $eruption ca.fire_aspect matches 4 as @s run data modify entity @s Fire set value 321
execute if score $eruption ca.fire_aspect matches 5.. as @s run data modify entity @s Fire set value 401

#Frostbite
scoreboard players operation $fb ca.frostbite = $eruption ca.frostbite
execute if score $eruption ca.frostbite matches 1.. run function cartographer_custom_enchantments:enchant_effects/frostbite/branch

execute if score $do_apply_effects ca.status_var matches 1.. at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute if score $do_apply_status ca.status_var matches 1.. at @s run function cartographer_custom_statuses:apply_status/apply/set_statuses


#Executioner
scoreboard players operation $exec ca.executioner = $eruption ca.executioner
execute if score $eruption ca.executioner matches 1.. run function cartographer_custom_enchantments:enchant_effects/executioner/branch

#Reset this stat
scoreboard players set $exec_dmg bbl.storage 0

function #minecraft:cartographer/events/enchants_mob_hit/tool/eruption