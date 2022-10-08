scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 0.5

execute store result score $force void_home.x run data get entity @s Pos[0]
execute store result score $force void_home.y run data get entity @s Pos[1]
execute store result score $force void_home.z run data get entity @s Pos[2]

title @s actionbar [{"text":"Void Home Set! ","color":"aqua","italic":false},{"text":"! DO NOT FORGET TO FORCE LOAD THIS CHUNK !","color":"red","italic":false,"bold":true}]
