scoreboard players set $test_owner ca.mob_var 1

execute on origin if entity @s[tag=ca.has_active,tag=ca.laser] run function cartographer_mob_abilities:trackers/laser/origin

execute on passengers if entity @s[type=marker,tag=ca.laser_tracker] run scoreboard players operation @s ability_charge = $ability_charge_val ca.mob_var
execute on passengers if entity @s[type=marker,tag=ca.laser_tracker] run scoreboard players operation @s ca.ability_dmg = $damage ca.ability_dmg

execute positioned as 31182015-2018-1311-5181-311811518 run tp @s ~ ~ ~

execute if score $test_owner ca.mob_var matches 1.. on passengers run kill @s
execute if score $test_owner ca.mob_var matches 1.. run kill @s

tp 31182015-2018-1311-5181-311811518 4206900 50 4206900

execute on passengers if entity @s[type=marker,tag=ca.laser_tracker] as @s at @s run function cartographer_mob_abilities:trackers/laser/do
