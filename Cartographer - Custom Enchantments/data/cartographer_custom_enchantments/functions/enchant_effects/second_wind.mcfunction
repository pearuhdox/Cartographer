scoreboard players set $abs_disable_sw second_wind 0
execute store result score $abs_disable_sw second_wind run data get entity @s AbsorptionAmount 10

execute if score $abs_disable_sw second_wind matches 1.. run tag @s remove fatal_protection

execute if entity @s[tag=mortal_coil,scores={second_wind_time=0}] run function cartographer_custom_enchantments:enchant_effects/second_wind/suffer

execute if entity @s[tag=mortal_coil,scores={second_wind_time=1..}] run function cartographer_custom_enchantments:enchant_effects/second_wind/counting

execute if entity @s[tag=fatal_protection,tag=!evading] run effect give @s resistance 1 4 true
execute if entity @s[tag=fatal_protection,scores={second_wind_tier=1..}] run scoreboard players remove @s second_wind_tier 1

#Before we call, we test what type of damage it was. We ignore hits that are supposed to be protected by Evasion.
execute if score @s[tag=fatal_protection,tag=!evading] ca.sw_fall matches 1.. run tag @s add fall_hit

execute if entity @s[tag=fatal_protection,tag=!evading] if block ~ ~ ~ lava run tag @s add fire_hit
execute if score @s[tag=fatal_protection,tag=!evading] ca.dmg_resist_sw matches 1..10 if entity @s[nbt=!{Fire:-20s}] run tag @s add fire_hit

execute if entity @s[advancements={cartographer_custom_enchantments:second_wind_projectile=true}] run tag @s add projectile_hit

execute if entity @s[advancements={cartographer_custom_enchantments:second_wind_explosion=true}] run tag @s add explosion_hit

execute if entity @s[scores={rally=1..}] run scoreboard players operation @s ca.rally_amt = @s ca.dmg_resist_sw

#Call a Second Wind damage trigger (if no Evading)
execute if score @s[tag=fatal_protection,tag=!evading] ca.dmg_resist_sw matches 1.. run function cartographer_custom_enchantments:enchant_effects/second_wind/damage

#Call an Evasion trigger instead if evading
execute if score @s[tag=fatal_protection,tag=evading] ca.dmg_resist_sw matches 1.. run function cartographer_custom_enchantments:enchant_effects/evasion_trigger

scoreboard players set @s ca.dmg_resist_sw 0

execute if entity @s[tag=true_death,tag=fatal_protection,tag=!evading] run function cartographer_custom_enchantments:enchant_effects/second_wind/fatal

tag @s[tag=!mortal_coil] add fatal_protection
tag @s[tag=mortal_coil] remove fatal_protection