#Evocation
execute if entity @s[scores={ca.evocation=1..}] run function cartographer_custom_enchantments:enchant_effects/evocation/master
#Sweeping
execute unless entity @s[tag=ca.sweep_schedule_success] if entity @s[scores={ca.sweeping=1..}] run function cartographer_custom_enchantments:enchant_effects/sweeping/master
#Surging
execute if entity @s[scores={ca.thrusting=1..}] if predicate bb:cant_crit run function cartographer_custom_enchantments:enchant_effects/thrusting/master
#Slamming
execute if entity @s[scores={ca.slamming=1..}] unless predicate bb:cant_crit run function cartographer_custom_enchantments:enchant_effects/slamming/master

#Run On Hit Enchantments on the hit entities
scoreboard players set $fire_aspect ca.weapon_var 0
scoreboard players set $knockback ca.weapon_var 0

scoreboard players set $executioner ca.weapon_var 0
scoreboard players set $first_strike ca.weapon_var 0
scoreboard players set $hex_eater ca.weapon_var 0
scoreboard players set $tempo_theft ca.weapon_var 0
scoreboard players set $cauterize ca.weapon_var 0

scoreboard players set $duelist ca.weapon_var 0
scoreboard players set $hunter ca.weapon_var 0
scoreboard players set $smite ca.weapon_var 0

scoreboard players operation $fire_aspect ca.weapon_var = @s ca.fire_aspect
scoreboard players operation $knockback ca.weapon_var = @s ca.knockback

scoreboard players operation $executioner ca.weapon_var = @s ca.executioner
scoreboard players operation $first_strike ca.weapon_var = @s ca.first_strike
scoreboard players operation $hex_eater ca.weapon_var = @s ca.hex_eater
scoreboard players operation $tempo_theft ca.weapon_var = @s ca.tempo_theft
scoreboard players operation $cauterize ca.weapon_var = @s ca.cauterize

scoreboard players operation $duelist ca.weapon_var = @s ca.duelist
scoreboard players operation $hunter ca.weapon_var = @s ca.hunter
scoreboard players operation $smite ca.weapon_var = @s ca.smite

scoreboard players set $block_smite ca.weapon_var 1
scoreboard players set $block_fire_aspect ca.weapon_var 1
scoreboard players set $block_knockback ca.weapon_var 1
scoreboard players set $block_punch ca.weapon_var 1
execute as @e[type=#bb:hostile,tag=ca.attacked_mob] at @s run function cartographer_custom_enchantments:enchant_effects/on_hit/melee_master