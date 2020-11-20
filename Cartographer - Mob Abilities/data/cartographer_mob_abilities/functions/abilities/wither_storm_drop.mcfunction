tag @e[tag=wither_storm_skull,tag=!dropped,limit=1,sort=random] add chosen

execute as @e[tag=wither_storm_skull,tag=chosen] run execute store result score @s storm_height run data get entity @s Pos[1] 1

execute as @e[tag=wither_storm_skull,tag=chosen] at @s run execute store result entity @s Pos[1] double 1 run scoreboard players add @s storm_height 10

execute as @e[tag=wither_storm_skull,tag=chosen] at @s run data merge entity @s {direction:[0.0,-0.2,0.0],power:[0.0,-0.2,0.0]}

tag @e[tag=wither_storm_skull,tag=chosen] add dropped
tag @e[tag=wither_storm_skull,tag=chosen] remove chosen

execute if entity @e[tag=wither_storm_skull,tag=!dropped] run schedule function cartographer_mob_abilities:abilities/wither_storm_drop 2t
