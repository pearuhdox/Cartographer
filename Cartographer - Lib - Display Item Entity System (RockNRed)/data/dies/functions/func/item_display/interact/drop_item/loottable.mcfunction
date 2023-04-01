
summon chest_boat 4206859 1.2 4206866 {Silent:1b,Invulnerable:1b,Type:"spruce",LootTable:"minecraft:empty",UUID:[I;-436580125,-2140190702,-2102115516,-604871692]}
data modify entity e5fa50e3-806f-4812-82b4-4344dbf263f4 LootTable set from entity @s item.tag.loottable
kill e5fa50e3-806f-4812-82b4-4344dbf263f4
execute positioned 4206859 1.2 4206866 run tag @e[type=item,distance=..3] add dies.new_item
execute positioned 4206859 1.2 4206866 run tp @e[type=item,tag=dies.new_item,distance=..3] @s

execute if score @s dies.object.frame_facing matches 0 as @e[type=item,tag=dies.new_item,distance=..2] at @s run tp @s ~ ~-.3 ~
execute if score @s dies.object.frame_facing matches 1 as @e[type=item,tag=dies.new_item,distance=..2] at @s run tp @s ~ ~.126 ~
execute if score @s dies.object.frame_facing matches 2 as @e[type=item,tag=dies.new_item,distance=..2] at @s run tp @s ~ ~.1 ~-.2
execute if score @s dies.object.frame_facing matches 3 as @e[type=item,tag=dies.new_item,distance=..2] at @s run tp @s ~ ~.1 ~.2
execute if score @s dies.object.frame_facing matches 4 as @e[type=item,tag=dies.new_item,distance=..2] at @s run tp @s ~-.2 ~.1 ~
execute if score @s dies.object.frame_facing matches 5 as @e[type=item,tag=dies.new_item,distance=..2] at @s run tp @s ~.2 ~.1 ~

execute if entity @e[type=item,distance=..1,tag=dies.new_item] run function dies:func/item_display/interact/drop_item/sound

execute as @e[type=item,distance=..1,tag=dies.new_item] at @s run function dies:func/item_display/interact/drop_item/as_item

function #minecraft:dies/pickup_item

function dies:func/kill_stack/from_vehicle
