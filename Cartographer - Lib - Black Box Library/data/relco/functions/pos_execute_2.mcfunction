summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bbl.relco.target_execute"]}

execute store result score @s bbl.relco.X2 run data get entity @e[type=minecraft:armor_stand,tag=bbl.relco.target_execute,sort=nearest,limit=1] Pos[0]
execute store result score @s bbl.relco.Y2 run data get entity @e[type=minecraft:armor_stand,tag=bbl.relco.target_execute,sort=nearest,limit=1] Pos[1]
execute store result score @s bbl.relco.Z2 run data get entity @e[type=minecraft:armor_stand,tag=bbl.relco.target_execute,sort=nearest,limit=1] Pos[2]

kill @e[type=minecraft:armor_stand,tag=bbl.relco.target_execute,sort=nearest,limit=1]

function relco:display

