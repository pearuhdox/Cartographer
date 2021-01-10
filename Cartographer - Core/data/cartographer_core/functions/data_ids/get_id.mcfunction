#Ids start at 1
scoreboard players add #current ca.pldata.id 1
scoreboard players operation @s ca.pldata.id = #current ca.pldata.id

#Data starts off as a blank nbt object
data modify storage cartographer_core:pldata player_arr append value {}

#Name change handling
data modify storage cartographer_core:pldata new_id.UUID set from entity @s UUID
execute store result storage cartographer_core:pldata new_id.id int 1 run scoreboard players get @s ca.pldata.id
data modify storage cartographer_core:pldata id_data append from storage cartographer_core:pldata new_id

tag @s add ca.pldata.id