execute as @e[type=armor_stand,tag=wither_blast,distance=..32,tag=!checked] run scoreboard players add @s wither_storms 3
execute as @e[type=armor_stand,tag=wither_blast,distance=..32,tag=!checked,limit=1,sort=random] run tag @s add checked

scoreboard players remove @s wither_storms 1
execute if score @s wither_storms matches 1.. run function cartographer_mob_abilities:abilities/wither_storm/recurse