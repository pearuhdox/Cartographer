function cartographer_core:data_get/do

data modify storage cartographer_core:pldata working_data.2hand_off set from entity @s Inventory[{Slot:-106b}]

data modify storage cartographer_core:pldata working_data.2hand_off.Slot set value 0b

summon minecraft:item ~ ~ ~ {Age:-32767,Health:1000,PickupDelay:2,Tags:["two_handed_disarm"],Item:{id:"minecraft:polished_blackstone_button",Count:1b}}

execute as @e[type=item,distance=..1,tag=two_handed_disarm] at @s run data modify entity @s Item set from storage cartographer_core:pldata working_data.2hand_off

replaceitem entity @s weapon.offhand air

playsound minecraft:entity.zombie.attack_iron_door player @s ~ ~ ~ 0.3 2

function cartographer_core:data_put/do
