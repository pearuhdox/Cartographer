#Save Status Data
scoreboard players set $do_apply_effects ca.status_var 0
scoreboard players set $do_apply_status ca.status_var 0

execute if score $custom_statuses ca.installed matches 1.. run function cartographer_custom_statuses:calls/player_hit/melee

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

execute if score @s ca.sprint matches 0 if score @s ca.sneak matches 0 run function cartographer_custom_enchantments:enchant_effects/evocation/cage

execute if score @s ca.sprint matches 0 if score @s ca.sneak matches 0 run function cartographer_custom_enchantments:enchant_effects/evocation/branch/can_crit

execute if entity @s[tag=ca.evocation_penalty] run function cartographer_custom_enchantments:enchant_effects/evocation/branch/consume

tag @s remove ca.evocation_penalty