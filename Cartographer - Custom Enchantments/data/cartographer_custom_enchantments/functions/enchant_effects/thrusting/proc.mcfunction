scoreboard players operation $fire_aspect ca.thrusting = @s ca.fire_aspect
scoreboard players operation $frostbite ca.thrusting = @s ca.frostbite
scoreboard players operation $executioner ca.thrusting = @s ca.executioner
scoreboard players operation $knockback ca.thrusting = @s ca.knockback
scoreboard players operation $cauterize ca.thrusting = @s ca.cauterize

execute store result score $damage ca.thrusting run attribute @s minecraft:generic.attack_damage get
scoreboard players operation $damage ca.thrusting *= $80 ca.CONSTANT
scoreboard players operation $damage ca.thrusting /= $100 ca.CONSTANT
execute store result storage cartographer:macro.custom_enchantments damage int 1 run scoreboard players get $damage ca.thrusting

function cartographer_custom_statuses:apply_effects/save/mainhand
function cartographer_custom_statuses:apply_self/save/mainhand
function cartographer_custom_statuses:apply_status/save/mainhand

scoreboard players set @s ca.raycast 9
execute if score @s ca.sprint matches 1.. run scoreboard players set @s ca.raycast 15

execute anchored eyes positioned ^ ^-0.4 ^1 rotated ~ 0 run function cartographer_custom_enchantments:enchant_effects/thrusting/raycast

execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300

#Resets
execute as @e[type=#bb:hostile,tag=thrusted,distance=..15] at @s run tag @s remove thrusted

function cartographer_custom_enchantments:enchant_effects/thrusting/consume