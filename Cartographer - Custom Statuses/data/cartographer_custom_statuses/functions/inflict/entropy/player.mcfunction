execute store result score $p1 ca.player_entropy run data get entity @s UUID[0]
execute store result score $p2 ca.player_entropy run data get entity @s UUID[1]
execute store result score $p3 ca.player_entropy run data get entity @s UUID[2]
execute store result score $p4 ca.player_entropy run data get entity @s UUID[3]

execute if score $m1 ca.player_entropy = $p1 ca.player_entropy if score $m2 ca.player_entropy = $p2 ca.player_entropy if score $m3 ca.player_entropy = $p3 ca.player_entropy if score $m4 ca.player_entropy = $p4 ca.player_entropy run function cartographer_custom_statuses:inflict/entropy/branch_find