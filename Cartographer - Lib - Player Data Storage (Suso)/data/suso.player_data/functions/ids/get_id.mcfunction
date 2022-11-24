#Ids start at 1
scoreboard players add #current suso.pldata.id 1
scoreboard players operation @s suso.pldata.id = #current suso.pldata.id

execute if score #current suso.pldata.id matches 33.. run tellraw @a {"text":"[!] Player limit exceeded. Player data handling only supports up to 32 players.","color":"red"}

#Data starts off as a blank nbt object
execute if score $writeback suso.pldata.var matches 1 run function suso.player_data:put/writeback
data modify storage suso:pldata working_data set value {}
function suso.player_data:put/do

#Name change handling
data modify storage suso:pldata new_id.UUID set from entity @s UUID
execute store result storage suso:pldata new_id.id int 1 run scoreboard players get @s suso.pldata.id
data modify storage suso:pldata id_data append from storage suso:pldata new_id

tag @s add suso.pldata.id