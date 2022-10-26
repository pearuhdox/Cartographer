#finding new ID
function entityid:assign_id/find_id

#getting bits
scoreboard players operation @s entityid = current= entityid

#get bit 0
scoreboard players operation @s entityid.0 = @s entityid
scoreboard players operation @s entityid.0 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.0 matches 0 run tag @s add entityid.0.0
execute if score @s entityid.0 matches 1 run tag @s add entityid.0.1

#get bit 1
scoreboard players operation @s entityid.1 = @s entityid
scoreboard players operation @s entityid.1 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.1 matches 0 run tag @s add entityid.1.0
execute if score @s entityid.1 matches 1 run tag @s add entityid.1.1

#get bit 2
scoreboard players operation @s entityid.2 = @s entityid
scoreboard players operation @s entityid.2 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.2 matches 0 run tag @s add entityid.2.0
execute if score @s entityid.2 matches 1 run tag @s add entityid.2.1

#get bit 3
scoreboard players operation @s entityid.3 = @s entityid
scoreboard players operation @s entityid.3 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.3 matches 0 run tag @s add entityid.3.0
execute if score @s entityid.3 matches 1 run tag @s add entityid.3.1

#get bit 4
scoreboard players operation @s entityid.4 = @s entityid
scoreboard players operation @s entityid.4 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.4 matches 0 run tag @s add entityid.4.0
execute if score @s entityid.4 matches 1 run tag @s add entityid.4.1

#get bit 5
scoreboard players operation @s entityid.5 = @s entityid
scoreboard players operation @s entityid.5 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.5 matches 0 run tag @s add entityid.5.0
execute if score @s entityid.5 matches 1 run tag @s add entityid.5.1

#get bit 6
scoreboard players operation @s entityid.6 = @s entityid
scoreboard players operation @s entityid.6 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.6 matches 0 run tag @s add entityid.6.0
execute if score @s entityid.6 matches 1 run tag @s add entityid.6.1

#get bit 7
scoreboard players operation @s entityid.7 = @s entityid
scoreboard players operation @s entityid.7 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.7 matches 0 run tag @s add entityid.7.0
execute if score @s entityid.7 matches 1 run tag @s add entityid.7.1

#get bit 8
scoreboard players operation @s entityid.8 = @s entityid
scoreboard players operation @s entityid.8 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.8 matches 0 run tag @s add entityid.8.0
execute if score @s entityid.8 matches 1 run tag @s add entityid.8.1

#get bit 9
scoreboard players operation @s entityid.9 = @s entityid
scoreboard players operation @s entityid.9 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.9 matches 0 run tag @s add entityid.9.0
execute if score @s entityid.9 matches 1 run tag @s add entityid.9.1

#get bit 10
scoreboard players operation @s entityid.10 = @s entityid
scoreboard players operation @s entityid.10 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.10 matches 0 run tag @s add entityid.10.0
execute if score @s entityid.10 matches 1 run tag @s add entityid.10.1

#get bit 11
scoreboard players operation @s entityid.11 = @s entityid
scoreboard players operation @s entityid.11 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.11 matches 0 run tag @s add entityid.11.0
execute if score @s entityid.11 matches 1 run tag @s add entityid.11.1

#get bit 12
scoreboard players operation @s entityid.12 = @s entityid
scoreboard players operation @s entityid.12 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.12 matches 0 run tag @s add entityid.12.0
execute if score @s entityid.12 matches 1 run tag @s add entityid.12.1

#get bit 13
scoreboard players operation @s entityid.13 = @s entityid
scoreboard players operation @s entityid.13 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.13 matches 0 run tag @s add entityid.13.0
execute if score @s entityid.13 matches 1 run tag @s add entityid.13.1

#get bit 14
scoreboard players operation @s entityid.14 = @s entityid
scoreboard players operation @s entityid.14 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.14 matches 0 run tag @s add entityid.14.0
execute if score @s entityid.14 matches 1 run tag @s add entityid.14.1

#get bit 15
scoreboard players operation @s entityid.15 = @s entityid
scoreboard players operation @s entityid.15 %= 2 num
scoreboard players operation @s entityid /= 2 num
execute if score @s entityid.15 matches 0 run tag @s add entityid.15.0
execute if score @s entityid.15 matches 1 run tag @s add entityid.15.1

#re-setting current
scoreboard players operation @s entityid = current= entityid
execute if entity @s[type=player] run function entityid:assign_id/log_player

#rolling over
execute if score current= entityid matches 65534.. run scoreboard players set current= entityid 0