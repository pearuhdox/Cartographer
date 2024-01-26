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

execute store result score $damage ca.slamming run attribute @s minecraft:generic.attack_damage get
scoreboard players operation $damage ca.slamming *= $80 ca.CONSTANT
scoreboard players operation $damage ca.slamming /= $100 ca.CONSTANT
execute store result storage cartographer:macro.custom_enchantments damage int 1 run scoreboard players get $damage ca.slamming

function cartographer_custom_statuses:apply_effects/save/mainhand
function cartographer_custom_statuses:apply_self/save/mainhand
function cartographer_custom_statuses:apply_status/save/mainhand

scoreboard players set $size ca.attr_aoe_size 25
function cartographer_custom_enchantments:attribute_effects/aoe_size/adjust

scoreboard players set $success ca.slamming 0
execute as @e[type=#bb:hostile,tag=ca.attacked_mob,limit=1,sort=nearest,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/slamming/slam with storage cartographer:macro.custom_enchantments


execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300

#Resets
execute as @e[type=#bb:hostile,tag=thrusted,distance=..15] at @s run tag @s remove ca.slammed

#Consume only if more than one mob is affected
execute if score $success ca.slamming matches 2.. run function cartographer_custom_enchantments:enchant_effects/slamming/consume