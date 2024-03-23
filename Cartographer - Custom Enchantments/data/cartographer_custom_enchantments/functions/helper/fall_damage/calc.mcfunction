data modify storage cartographer_custom_enchantments:fall_damage data.effect set value {}
data modify storage cartographer_custom_enchantments:fall_damage data.effect set from entity @s active_effects[{id:"minecraft:jump_boost"}]

scoreboard players set $jb ca.fall_damage -1
execute if data storage cartographer_custom_enchantments:fall_damage data.effect.amplifier store result score $jb ca.fall_damage run data get storage cartographer_custom_enchantments:fall_damage data.effect.amplifier
execute if score $jb ca.fall_damage matches 0.. run scoreboard players add $jb ca.fall_damage 1

scoreboard players operation $buffer ca.fall_damage = $jb ca.fall_damage
scoreboard players operation $buffer ca.fall_damage *= $100 ca.CONSTANT


execute store result score $buffer_extra ca.fall_damage run attribute @s minecraft:generic.safe_fall_distance get 100
scoreboard players operation $buffer ca.fall_damage += $buffer_extra ca.fall_damage

scoreboard players operation $damage ca.fall_damage = @s ca.fall_damage
scoreboard players operation $damage ca.fall_damage -= $buffer ca.fall_damage

execute store result score $mult ca.fall_damage run attribute @s minecraft:generic.fall_damage_multiplier get 100
scoreboard players operation $damage ca.fall_damage *= $mult ca.fall_damage
scoreboard players operation $damage ca.fall_damage /= $100 ca.CONSTANT

execute if block ~ ~-0.1 ~ pointed_dripstone run scoreboard players operation $damage ca.fall_damage *= $2 ca.CONSTANT

execute store result storage cartographer:macro.custom_enchantments damage int 0.01 run scoreboard players get $damage ca.fall_damage
function cartographer_custom_enchantments:helper/fall_damage/macro with storage cartographer:macro.custom_enchantments
