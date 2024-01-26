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

scoreboard players set $success ca.attr_random_crit 0
execute if score @s ca.attr_random_crit matches 1.. run scoreboard players operation $damage_calc ca.attr_random_crit = $damage ca.sweeping
execute if score @s ca.attr_random_crit matches 1.. run function cartographer_custom_enchantments:attribute_effects/random_crit/melee
execute if score @s ca.attr_random_crit matches 1.. run scoreboard players operation $damage ca.sweeping = $damage_calc ca.attr_random_crit

function cartographer_custom_statuses:apply_effects/save/mainhand
function cartographer_custom_statuses:apply_self/save/mainhand
function cartographer_custom_statuses:apply_status/save/mainhand

scoreboard players set $count ca.sweeping 0

scoreboard players set $size ca.attr_aoe_size 20
function cartographer_custom_enchantments:attribute_effects/aoe_size/adjust

function cartographer_custom_enchantments:enchant_effects/sweeping/macro with storage cartographer:macro.custom_enchantments

execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300

execute if score $count ca.sweeping matches 2.. unless entity @s[tag=ca.sweep_schedule_success] run function cartographer_custom_enchantments:enchant_effects/sweeping/consume