
#Run functions for placing frames
execute if score @s dies.place_item_frame matches 1.. run function dies:func/place_frame

#Run trigger functions
execute if score @s dies.trigger matches 1 run function dies:func/menu/global
execute if score @s dies.trigger matches 2 run function dies:func/menu/player
execute if score @s dies.trigger matches 3 run function dies:func/menu/individual
execute if score @s dies.trigger matches 1.. run scoreboard players set @s dies.trigger 0

execute if score @s give_placeable_item matches 1 run function dies:func/give_item/default
execute if score @s give_placeable_item matches 1.. run scoreboard players set @s give_placeable_item 0
