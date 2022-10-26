# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 4/17/22
# Last Edit : 4/17/22
# Name      : Drop Slot 25
# Use       : Drop relevant inventory slot.

summon item ~ ~ ~ {PickupDelay:40,Tags:["bbl.dummy_item"],Item:{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"Error","italic":false}'}}}}
data modify entity @e[type=item,tag=bbl.dummy_item,limit=1,sort=nearest,distance=..1] Item set from entity @s Inventory[{Slot:25b}]
tag @e[type=item,tag=bbl.dummy_item,limit=1,sort=nearest,distance=..1] remove bbl.dummy_item
item replace entity @s inventory.16 with air

