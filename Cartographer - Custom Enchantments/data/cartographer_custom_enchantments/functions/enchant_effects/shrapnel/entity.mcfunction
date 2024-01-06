#Flame
execute if score $flame ca.var matches 1.. run data modify entity @s Fire set value 81

#Statuses!
function cartographer_custom_statuses:apply_effects/apply/create_aec
function cartographer_custom_statuses:apply_status/apply/set_statuses

scoreboard players set $shrapnel_hit ca.shrapnel 1

#Do Damage
scoreboard players operation @s ca.damage_queue = $damage ca.shrapnel

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

#Run On Hit Enchantments
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

scoreboard players operation $fire_aspect ca.weapon_var = $fire_aspect ca.var
scoreboard players operation $knockback ca.weapon_var = $knockback ca.var

scoreboard players operation $executioner ca.weapon_var = $executioner ca.var
scoreboard players operation $first_strike ca.weapon_var = $first_strike ca.var
scoreboard players operation $hex_eater ca.weapon_var = $hex_eater ca.var
scoreboard players operation $tempo_theft ca.weapon_var = $tempo_theft ca.var
scoreboard players operation $cauterize ca.weapon_var = $cauterize ca.var

scoreboard players operation $duelist ca.weapon_var = $duelist ca.var
scoreboard players operation $hunter ca.weapon_var = $hunter ca.var
scoreboard players operation $smite ca.weapon_var = $smite ca.var

function cartographer_custom_enchantments:enchant_effects/on_hit/ranged_master

function cartographer_custom_enchantments:helper/damage/macro_setup
function cartographer_custom_enchantments:enchant_effects/shrapnel/enchant_damage_bypass with storage cartographer:macro.custom_enchantments

tag @s add ca.shrapnel_hit