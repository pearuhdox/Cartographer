
#Reset storage
data remove storage bbl:tp sudo_root

#Set individual numbers for reading
execute store result storage bbl:tp sudo_root.x double 1 run data get entity @s Pos[0]
execute store result storage bbl:tp sudo_root.y double 1 run data get entity @s Pos[1]
execute store result storage bbl:tp sudo_root.z double 1 run data get entity @s Pos[2]

#Set full nbt for reading
data modify storage bbl:tp sudo_root.full set from entity @s Pos

#Set scores for reading
execute store result score @s bbl.tp_xyz.x run data get entity @s Pos[0]
execute store result score @s bbl.tp_xyz.y run data get entity @s Pos[1]
execute store result score @s bbl.tp_xyz.z run data get entity @s Pos[2]

#Save to player data
function bb:lib/pldata/read
data modify storage bbl:pldata sudo_root.working_data.tp_to_xyz_saved_pos set from entity @s Pos
function bb:lib/pldata/write
