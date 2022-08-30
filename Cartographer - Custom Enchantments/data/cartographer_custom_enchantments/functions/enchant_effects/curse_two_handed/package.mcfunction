data modify storage cartographer_custom_enchantments:two_handed Item set value {}
data modify storage cartographer_custom_enchantments:two_handed Item set from entity @s Inventory[{Slot:-106b}]
data remove storage cartographer_custom_enchantments:two_handed Item.Slot

item replace entity @s weapon.offhand with firework_star{display:{Name:'{"text":"Compressed Item","color":"red","italic":false}',Lore:['[{"text":"The crushing weight of a ","color":"gray","italic":false},{"text":"Two Handed","color":"red","italic":false}]','{"text":"item has compressed this item into","color":"gray","italic":false}','{"text":"an unusable state. Ceasing to hold","color":"gray","italic":false}','[{"text":"the ","color":"gray","italic":false},{"text":"Two Handed ","color":"red","italic":false},{"text":"item should return it","color":"gray","italic":false}]','{"text":"to its normal size and functionality.","color":"gray","italic":false}']},HideFlags:32,IsCompressed:1,Compressed:{},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.1,Operation:1,UUID:[I;526903549,-450670719,-1268256846,-1612576270],Slot:"offhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-72077071,1382171854,-2090298399,-523494747],Slot:"offhand"}],Explosion:{Type:4,Colors:[I;8224125]}} 1
item modify entity @s weapon.offhand cartographer_custom_enchantments:package_two_handed

playsound minecraft:item.trident.return player @s ~ ~ ~ .1 .3 .3
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ .3 1.3 .5