function cartographer_core:data_get/do

data modify storage cartographer_core:pldata working_data.knapsack set from entity @s Inventory[{Slot:-106b}]

data modify storage cartographer_core:pldata working_data.knapsack.Slot set value 0b

data modify block 4206900 0 4206900 Items append value {Slot:0b,id:"minecraft:rabbit_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Item Knapsack","color":"yellow","italic":false}',Lore:['{"text":"Your offhand has been bundled","color":"gray","italic":false}','{"text":"up in this knapsack because a","color":"gray","italic":false}','[{"text":"Two Handed ","color":"red","italic":false},{"text":"item is in your mainhand.","color":"gray","italic":false}]','{"text":" "}','[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"aqua","italic":false},{"text":"] ","color":"white","italic":false},{"text":"this item on the ","color":"gray","italic":false}]','{"text":"ground to open it and place","color":"gray","italic":false}','{"text":"the item on the ground.","color":"gray","italic":false}','{"text":" "}','{"text":"When you stop holding a","color":"gray","italic":false}','[{"text":"Two Handed","color":"red","italic":false},{"text":" item, this knapsack","color":"gray","italic":false}]','{"text":"will automatically turn back into","color":"gray","italic":false}','{"text":"the item it contains, assuming it","color":"gray","italic":false}','{"text":"is placed in your offhand.","color":"gray","italic":false}']},Knapsack:1,EntityTag:{id:"minecraft:item",Glowing:1b,Age:-32768,Health:1000,PickupDelay:20,Motion:[0.0,0.0,0.0],Tags:["knapsack_item"],Item:{id:"minecraft:stone",Count:1b}}}}

data modify block 4206900 0 4206900 Items[0].tag.EntityTag.Item set from storage cartographer_core:pldata working_data.knapsack

loot replace entity @s weapon.offhand 1 mine 4206900 0 4206900 air{drop_contents:1b}

playsound minecraft:item.armor.equip_leather player @s ~ ~ ~ 0.5 0.5

function cartographer_core:data_put/do
