
summon item ~ ~ ~ {PickupDelay:40,Tags:["bbl.dummy_item"],Item:{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"Error","italic":false}'}}}}
data modify entity @e[type=item,tag=bbl.dummy_item,limit=1,sort=nearest,distance=..1] Item set from entity @s Inventory[{Slot:34b}]
tag @e[type=item,tag=bbl.dummy_item,limit=1,sort=nearest,distance=..1] remove bbl.dummy_item
item replace entity @s inventory.25 with air
