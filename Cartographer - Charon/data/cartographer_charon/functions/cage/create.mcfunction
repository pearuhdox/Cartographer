#say creating a trap
scoreboard players set $layer cage.var 0

#Scan up to a max of 30 spawners in the area.
scoreboard players set $cage_stock cage.var 20

execute align xyz positioned ~-32 ~-32 ~-32 run function cartographer_charon:cage/create_cage/layer

#Remove any not setup stands within 0.5 blocks of setup stands (to prevent overwriting)
execute as @e[type=armor_stand,tag=ca.item_cage,tag=setup_cage,distance=..70] at @s run function cartographer_charon:cage/remove_dupe_cage

execute if score $cage_stock cage.var matches 20 positioned ~ ~ ~ align xyz run function cartographer_charon:cage/force_cage

# Kill all except one cage. One at random is the item cage
execute as @e[type=armor_stand,tag=ca.item_cage,tag=!setup_cage,limit=1,sort=random] at @s run function cartographer_charon:cage/setup_cage
execute as @e[type=armor_stand,tag=ca.item_cage,tag=!setup_cage,tag=!chosen_cage] at @s run function cartographer_charon:cage/purge_extra_cages

scoreboard players add $cage_count dt.var 1