scoreboard players operation @s ca.damage_queue = $damage ca.ability_dmg
scoreboard players operation @s ca.damage_queue /= $5 ca.CONSTANT

execute if score @s ca.damage_queue matches ..0 run scoreboard players set @s ca.damage_queue 1

function cartographer_mob_abilities:helper/damage/ability_magic_untethered

scoreboard players set @s ca.laser_damage 0
tag @s add ability_tagged
