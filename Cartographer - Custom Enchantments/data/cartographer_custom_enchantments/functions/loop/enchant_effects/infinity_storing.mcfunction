kill @e[type=item,distance=..2]

summon item ~ ~ ~ {NoGravity:1b,Tags:["infinity_storage_m"],Age:5998,PickupDelay:32767,Item:{id:barrier,Count:1b}}
summon item ~ ~ ~ {NoGravity:1b,Tags:["infinity_storage_o"],Age:5998,PickupDelay:32767,Item:{id:barrier,Count:1b}}

execute if entity @s[scores={infinity_m=1}] run data modify entity @e[type=item,limit=1,distance=..2,sort=nearest,tag=infinity_storage_m] Item merge from entity @s SelectedItem
execute if entity @s[scores={infinity_o=1}] run data modify entity @e[type=item,limit=1,distance=..2,sort=nearest,tag=infinity_storage_o] Item merge from entity @s Inventory[{Slot:-106b}]