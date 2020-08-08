data modify storage item:knapsack path set from entity @s Inventory[{Slot:-106b}]

data modify storage item:knapsack path.Slot set value 0b

data modify block 4206900 0 4206900 Items append value {Slot:0b,id:"minecraft:rabbit_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Item Knapsack","color":"yellow","italic":false}',Lore:['{"text":"Your offhand has been bundled","color":"white","italic":false}','{"text":"up in this knapsack because a","color":"white","italic":false}','[{"text":"Two Handed ","color":"red","italic":false},{"text":"item is in your hotbar.","color":"white","italic":false}]','{"text":" "}','[{"text":"[Right Click] ","color":"yellow","italic":false},{"text":"this item on the ","color":"white","italic":false}]','{"text":"ground to open it and place","color":"white","italic":false}','{"text":"the item on the ground.","color":"white","italic":false}']},Knapsack:1,EntityTag:{id:"minecraft:item",Glowing:1b,Age:-32768,Health:1000,PickupDelay:20,Motion:[0.0,0.0,0.0],Tags:["knapsack_item"],Item:{id:"minecraft:stone",Count:1b}}}}

data modify block 4206900 0 4206900 Items[0].tag.EntityTag.Item set from storage item:knapsack path

loot replace entity @s weapon.offhand 1 mine 4206900 0 4206900 air{drop_contents:1b}

playsound minecraft:item.armor.equip_leather player @s ~ ~ ~ 1 0.5