scoreboard players set $dmg ca.hex_eater 0

scoreboard players operation $dmg ca.hex_eater = @s ca.hex_eater
scoreboard players operation $dmg ca.hex_eater *= $hex_eater ca.weapon_var
scoreboard players operation $dmg ca.hex_eater *= $10 ca.CONSTANT

scoreboard players operation @s ca.damage_queue = $dmg ca.hex_eater

scoreboard players set @s ca.hex_eater_time_cleanse 3

execute if score $dmg ca.hex_eater matches 1.. run function cartographer_custom_enchantments:helper/damage/macro_setup
execute if score $dmg ca.hex_eater matches 1.. run function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass with storage cartographer:macro.custom_enchantments

execute if score $dmg ca.hex_eater matches 1.. run playsound minecraft:entity.warden.death player @a ~ ~ ~ 0.5 2
execute if score $dmg ca.hex_eater matches 1.. run particle minecraft:effect ~ ~1.2 ~ 0.3 0.5 0.3 4 14 normal

function #minecraft:cartographer/events/enchants_mob_hit/melee/hex_eater