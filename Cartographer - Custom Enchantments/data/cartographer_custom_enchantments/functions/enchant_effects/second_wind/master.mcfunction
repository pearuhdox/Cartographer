execute if entity @s[tag=mortal_coil,scores={ca.sw_time=0}] run function cartographer_custom_enchantments:enchant_effects/second_wind/suffer
execute if entity @s[tag=mortal_coil,scores={ca.sw_time=1..}] run function cartographer_custom_enchantments:enchant_effects/second_wind/counting

execute if entity @s[tag=fatal_protection,tag=!evading] run effect give @s resistance 1 4 true


#Before we call, we test what type of damage it was. We ignore hits that are supposed to be protected by Evasion.
execute if score @s[tag=fatal_protection,tag=!evading] ca.sw_fall matches 1.. run tag @s add fall_hit

execute if entity @s[tag=fatal_protection,tag=!evading] if block ~ ~ ~ lava run tag @s add fire_hit
execute if entity @s[tag=fatal_protection,tag=!evading,tag=!fire_hit] if block ~ ~ ~ fire run tag @s add fire_hit
execute if entity @s[tag=fatal_protection,tag=!evading,tag=!fire_hit] if block ~ ~-0.2 ~ magma_block run tag @s add fire_hit
execute if score @s[tag=fatal_protection,tag=!evading,tag=!fire_hit] ca.dmg_resist_sw matches 1..10 if entity @s[nbt=!{Fire:-20s}] run tag @s add fire_hit

execute if score @s[tag=fatal_protection,tag=!evading,tag=!fire_hit] ca.dmg_resist_sw matches 1..10 if predicate cartographer_custom_enchantments:is_poisoned run tag @s add magic_hit
execute if score @s[tag=fatal_protection,tag=!evading,tag=!fire_hit,tag=!magic_hit] ca.dmg_resist_sw matches 1..10 if predicate cartographer_custom_enchantments:is_withered run tag @s add magic_hit

execute if entity @s[advancements={cartographer_custom_enchantments:second_wind_projectile=true}] run tag @s add projectile_hit

execute if entity @s[advancements={cartographer_custom_enchantments:second_wind_explosion=true}] run tag @s add explosion_hit

#Call a Second Wind damage trigger (if no Evading)
execute if score @s[tag=fatal_protection,tag=!evading,tag=!mortal_coil] ca.dmg_resist_sw matches 1.. unless score @s ca.sw_lava_timer matches 1.. unless predicate cartographer_custom_enchantments:has_higher_resistance run function cartographer_custom_enchantments:enchant_effects/second_wind/damage

#Call an Evasion trigger instead if evading
execute if score @s[tag=fatal_protection,tag=evading] ca.dmg_resist_sw matches 1.. run function cartographer_custom_enchantments:enchant_effects/evasion/trigger

scoreboard players set @s ca.dmg_resist_sw 0

execute if entity @s[tag=true_death,tag=fatal_protection,tag=!evading] run function cartographer_custom_enchantments:enchant_effects/second_wind/fatal

tag @s remove true_death

tag @s[tag=!mortal_coil] add fatal_protection
tag @s[tag=mortal_coil] remove fatal_protection