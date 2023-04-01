
execute as @e[type=item_frame,distance=..8,tag=!dies.new_item,nbt={Item:{id:"minecraft:structure_void",tag:{new_dies_item:1}}}] at @s run function dies:func/new_item/new_frame
