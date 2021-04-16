#Assign ids to players
execute unless score #current suso.pldata.id matches 0.. run scoreboard players set #current suso.pldata.id 0
execute if score #current suso.pldata.id matches 0.. as @a[tag=!suso.pldata.id] run function suso.player_data:ids/get_id
execute as @a[scores={suso.pldata.id=0}] run tag @s remove suso.pldata.id

#Recover id on name change
execute as @a[tag=suso.pldata.id] unless score @s suso.pldata.id matches 1.. run function suso.player_data:ids/recover_id
