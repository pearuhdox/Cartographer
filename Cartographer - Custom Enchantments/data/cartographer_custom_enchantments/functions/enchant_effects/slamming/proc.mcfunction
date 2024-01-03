scoreboard players operation $fire_aspect ca.weapon_var = @s ca.fire_aspect
scoreboard players operation $knockback ca.weapon_var = @s ca.knockback

scoreboard players operation $executioner ca.weapon_var = @s ca.executioner
scoreboard players operation $first_strike ca.weapon_var = @s ca.first_strike
scoreboard players operation $hex_eater ca.weapon_var = @s ca.hex_eater
scoreboard players operation $tempo_theft ca.weapon_var = @s ca.tempo_theft
scoreboard players operation $cauterize ca.weapon_var = @s ca.cauterize

scoreboard players operation $duelist ca.weapon_var = @s ca.duelist
scoreboard players operation $hunter ca.weapon_var = @s ca.hunter

execute store result score $damage ca.slamming run attribute @s minecraft:generic.attack_damage get
scoreboard players operation $damage ca.slamming *= $80 ca.CONSTANT
scoreboard players operation $damage ca.slamming /= $100 ca.CONSTANT
execute store result storage cartographer:macro.custom_enchantments damage int 1 run scoreboard players get $damage ca.slamming

function cartographer_custom_statuses:apply_effects/save/mainhand
function cartographer_custom_statuses:apply_self/save/mainhand
function cartographer_custom_statuses:apply_status/save/mainhand

scoreboard players set $success ca.slamming 0
execute as @e[type=#bb:hostile,distance=..5,limit=1,sort=nearest,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_enchantments:enchant_effects/slamming/slam
execute unless score $success ca.slamming matches 1.. anchored eyes positioned ^ ^-1 ^2.5 run function cartographer_custom_enchantments:enchant_effects/slamming/slam

execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300

#Resets
execute as @e[type=#bb:hostile,tag=thrusted,distance=..15] at @s run tag @s remove thrusted

function cartographer_custom_enchantments:enchant_effects/slamming/consume