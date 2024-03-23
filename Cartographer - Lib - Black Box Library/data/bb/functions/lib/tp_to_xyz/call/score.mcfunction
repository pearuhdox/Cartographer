
execute store result storage bbl:tp sudo_root.full[0] double 1 run scoreboard players get @s bbl.tp_xyz.x
execute store result storage bbl:tp sudo_root.full[1] double 1 run scoreboard players get @s bbl.tp_xyz.y
execute store result storage bbl:tp sudo_root.full[2] double 1 run scoreboard players get @s bbl.tp_xyz.z

function bb:lib/tp_to_xyz/call/storage
