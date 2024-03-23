
execute store result score @s bbl.move.mouse_angle.pitch.current run data get entity @s Rotation[1]
execute store result score @s bbl.move.mouse_angle.yaw.current run data get entity @s Rotation[0]

execute unless score @s bbl.move.mouse_angle.pitch.current = @s bbl.move.mouse_angle.pitch.past run function bb:lib/move_detector/mouse_move
execute unless score @s bbl.move.mouse_angle.yaw.current = @s bbl.move.mouse_angle.yaw.past run function bb:lib/move_detector/mouse_move

scoreboard players operation @s bbl.move.mouse_angle.pitch.past = @s bbl.move.mouse_angle.pitch.current
scoreboard players operation @s bbl.move.mouse_angle.yaw.past = @s bbl.move.mouse_angle.yaw.current
