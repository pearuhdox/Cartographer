execute store result score $damage ca.thrusting run attribute @s minecraft:generic.attack_damage get
scoreboard players operation $damage ca.thrusting *= $80 ca.CONSTANT
scoreboard players operation $damage ca.thrusting /= $100 ca.CONSTANT
execute store result storage cartographer:macro.custom_enchantments damage int 1 run scoreboard players get $damage ca.thrusting


scoreboard players set @s ca.raycast 9
execute if score @s ca.sprint matches 1.. run scoreboard players set @s ca.raycast 15

execute anchored eyes positioned ^ ^-0.4 ^1 rotated ~ 0 run function cartographer_custom_enchantments:enchant_effects/thrusting/raycast

#Resets
execute as @e[type=#bb:hostile,tag=thrusted,distance=..15] at @s run tag @s remove thrusted

function cartographer_custom_enchantments:enchant_effects/thrusting/consume