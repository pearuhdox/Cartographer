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

playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 1 1

particle minecraft:sweep_attack ^ ^0.75 ^1.25 0 0 0 0.2 1 force

execute store result score $damage ca.sweeping run attribute @s minecraft:generic.attack_damage get
scoreboard players operation $damage ca.sweeping *= $80 ca.CONSTANT
scoreboard players operation $damage ca.sweeping /= $100 ca.CONSTANT
execute store result storage cartographer:macro.custom_enchantments damage int 1 run scoreboard players get $damage ca.sweeping

function cartographer_custom_statuses:apply_effects/save/mainhand
function cartographer_custom_statuses:apply_self/save/mainhand
function cartographer_custom_statuses:apply_status/save/mainhand

scoreboard players set $count ca.sweeping 0
execute anchored eyes positioned ^ ^-0.5 ^2 positioned ~-1 ~ ~-1 as @e[type=#bb:hostile,dx=3,dy=1,dz=3] at @s run function cartographer_custom_enchantments:enchant_effects/sweeping/effects with storage cartographer:macro.custom_enchantments

execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300

execute if score $count ca.sweeping matches 2.. unless entity @s[tag=ca.sweep_schedule_success] run function cartographer_custom_enchantments:enchant_effects/sweeping/consume