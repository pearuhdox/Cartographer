tp 31182015-2018-1311-5181-311811518 ~ ~ ~ facing entity @p feet
execute store result score @s ca.aim_direction run data get entity 31182015-2018-1311-5181-311811518 Rotation[0]
tp 31182015-2018-1311-5181-311811518 4206900 0 4206900

execute if score @s ca.cutter_side matches 1 run scoreboard players remove @s ca.aim_direction 45
execute if score @s ca.cutter_side matches 2 run scoreboard players add @s ca.aim_direction 45

execute store result storage cartographer:macro.mob_abilities aim_direction int 1 run scoreboard players get @s ca.aim_direction

function cartographer_mob_abilities:animations/cutter/macro with storage cartographer:macro.mob_abilities