scoreboard players set $test_owner ca.mob_var 0

scoreboard players operation $ability_charge_val ca.mob_var = @s ability_charge

execute at @s positioned ~ ~0.3 ~ run tp 31182015-2018-1311-5181-311811518 @s

function cartographer_mob_abilities:abilities/laser/calc_damage

scoreboard players set $laser_bla ca.var 0
scoreboard players set $laser_gla ca.var 0
scoreboard players set $laser_ove ca.var 0
scoreboard players set $laser_ven ca.var 0
scoreboard players set $laser_zep ca.var 0
scoreboard players set $laser_hor ca.var 0
scoreboard players set $laser_vol ca.var 0
scoreboard players set $laser_web ca.var 0
scoreboard players set $laser_cur ca.var 0

scoreboard players set $laser_beam ca.var 0

execute if entity @s[tag=ca.blazing] run scoreboard players set $laser_bla ca.var 1
execute if entity @s[tag=ca.glacial] run scoreboard players set $laser_gla ca.var 1
execute if entity @s[tag=ca.overloading] run scoreboard players set $laser_ove ca.var 1
execute if entity @s[tag=ca.venemous] run scoreboard players set $laser_ven ca.var 1
execute if entity @s[tag=ca.zephyrous] run scoreboard players set $laser_zep ca.var 1
execute if entity @s[tag=ca.horrifying] run scoreboard players set $laser_hor ca.var 1
execute if entity @s[tag=ca.volatile] run scoreboard players set $laser_vol ca.var 1
execute if entity @s[tag=ca.webbing] run scoreboard players set $laser_web ca.var 1
execute if entity @s[tag=ca.cursing] run scoreboard players set $laser_cur ca.var 1

execute if entity @s[tag=ca.beam] run scoreboard players set $laser_beam ca.var 1

execute if entity @s[tag=ca.alchemist] run function cartographer_mob_abilities:abilities/laser/alchemist_save