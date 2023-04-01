#finding new ID
function entityid:assign_id/find_id

#getting bits
scoreboard players operation @s entityid = current= entityid

#get bit 0
scoreboard players operation $id0 entityid = @s entityid
scoreboard players operation $id0 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id0 entityid matches 0 run tag @s add entityid.0.0
execute if score $id0 entityid matches 1 run tag @s add entityid.0.1

#get bit 1
scoreboard players operation $id1 entityid = @s entityid
scoreboard players operation $id1 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id1 entityid matches 0 run tag @s add entityid.1.0
execute if score $id1 entityid matches 1 run tag @s add entityid.1.1

#get bit 2
scoreboard players operation $id2 entityid = @s entityid
scoreboard players operation $id2 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id2 entityid matches 0 run tag @s add entityid.2.0
execute if score $id2 entityid matches 1 run tag @s add entityid.2.1

#get bit 3
scoreboard players operation $id3 entityid = @s entityid
scoreboard players operation $id3 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id3 entityid matches 0 run tag @s add entityid.3.0
execute if score $id3 entityid matches 1 run tag @s add entityid.3.1

#get bit 4
scoreboard players operation $id4 entityid = @s entityid
scoreboard players operation $id4 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id4 entityid matches 0 run tag @s add entityid.4.0
execute if score $id4 entityid matches 1 run tag @s add entityid.4.1

#get bit 5
scoreboard players operation $id5 entityid = @s entityid
scoreboard players operation $id5 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id5 entityid matches 0 run tag @s add entityid.5.0
execute if score $id5 entityid matches 1 run tag @s add entityid.5.1

#get bit 6
scoreboard players operation $id6 entityid = @s entityid
scoreboard players operation $id6 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id6 entityid matches 0 run tag @s add entityid.6.0
execute if score $id6 entityid matches 1 run tag @s add entityid.6.1

#get bit 7
scoreboard players operation $id7 entityid = @s entityid
scoreboard players operation $id7 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id7 entityid matches 0 run tag @s add entityid.7.0
execute if score $id7 entityid matches 1 run tag @s add entityid.7.1

#get bit 8
scoreboard players operation $id8 entityid = @s entityid
scoreboard players operation $id8 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id8 entityid matches 0 run tag @s add entityid.8.0
execute if score $id8 entityid matches 1 run tag @s add entityid.8.1

#get bit 9
scoreboard players operation $id9 entityid = @s entityid
scoreboard players operation $id9 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id9 entityid matches 0 run tag @s add entityid.9.0
execute if score $id9 entityid matches 1 run tag @s add entityid.9.1

#get bit 10
scoreboard players operation $id10 entityid = @s entityid
scoreboard players operation $id10 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id10 entityid matches 0 run tag @s add entityid.10.0
execute if score $id10 entityid matches 1 run tag @s add entityid.10.1

#get bit 11
scoreboard players operation $id11 entityid = @s entityid
scoreboard players operation $id11 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id11 entityid matches 0 run tag @s add entityid.11.0
execute if score $id11 entityid matches 1 run tag @s add entityid.11.1

#get bit 12
scoreboard players operation $id12 entityid = @s entityid
scoreboard players operation $id12 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id12 entityid matches 0 run tag @s add entityid.12.0
execute if score $id12 entityid matches 1 run tag @s add entityid.12.1

#get bit 13
scoreboard players operation $id13 entityid = @s entityid
scoreboard players operation $id13 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id13 entityid matches 0 run tag @s add entityid.13.0
execute if score $id13 entityid matches 1 run tag @s add entityid.13.1

#get bit 14
scoreboard players operation $id14 entityid = @s entityid
scoreboard players operation $id14 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id14 entityid matches 0 run tag @s add entityid.14.0
execute if score $id14 entityid matches 1 run tag @s add entityid.14.1

#get bit 15
scoreboard players operation $id15 entityid = @s entityid
scoreboard players operation $id15 entityid %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score $id15 entityid matches 0 run tag @s add entityid.15.0
execute if score $id15 entityid matches 1 run tag @s add entityid.15.1

#re-setting current
scoreboard players operation @s entityid = current= entityid
execute if entity @s[type=player] run function entityid:assign_id/log_player

#rolling over
execute if score current= entityid matches 65534.. run scoreboard players set current= entityid 0