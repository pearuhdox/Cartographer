########################################
# File: Cartographer Core - Is Holding (Lexica)
#
# Author: PearUhDox | Date: 3/23/2021
#
# Description: Checks if the player is holding a Lexica item.
########################################

scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{Lexica:1}}}] ca.lexica_time 5
scoreboard players set @s[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b,tag:{Lexica:1}}]}] ca.lexica_time 5

tag @s[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{Lexica:1}}}] add holding_lexica
tag @s[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b,tag:{Lexica:1}}]}] add holding_lexica

tag @s[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b,tag:{Lexica:1}}]}] remove holding_lexica_m
tag @s[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{Lexica:1}}}] remove holding_lexica_o

tag @s[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{Lexica:1}}}] add holding_lexica_m
tag @s[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b,tag:{Lexica:1}}]}] add holding_lexica_o