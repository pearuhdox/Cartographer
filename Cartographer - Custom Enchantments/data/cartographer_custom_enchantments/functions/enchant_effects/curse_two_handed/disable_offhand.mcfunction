function suso.player_data:get/do

execute if entity @s[tag=!is_two_handing] run playsound minecraft:item.trident.return player @s ~ ~ ~ .3 .3 .3
execute if entity @s[tag=!is_two_handing] run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ .5 1.3 .5

tag @s add processed_two_handed
tag @s add is_two_handing

item replace block 4206900 1 4206900 container.0 with air 1

item replace block 4206900 1 4206900 container.0 with firework_star{display:{Name:'{"text":"Compressed Item","color":"red","italic":false}',Lore:['[{"text":"The crushing weight of a ","color":"gray","italic":false},{"text":"Two Handed","color":"red","italic":false}]','{"text":"item has compressed this item into","color":"gray","italic":false}','{"text":"an unusable state. Ceasing to hold","color":"gray","italic":false}','[{"text":"the ","color":"gray","italic":false},{"text":"Two Handed ","color":"red","italic":false},{"text":"item should return it","color":"gray","italic":false}]','{"text":"to its normal size and functionality.","color":"gray","italic":false}']},HideFlags:32,IsCompressed:1,Compressed:{},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.1,Operation:1,UUID:[I;526903549,-450670719,-1268256846,-1612576270],Slot:"offhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-72077071,1382171854,-2090298399,-523494747],Slot:"offhand"}],Explosion:{Type:4,Colors:[I;8224125]}} 1
data modify block 4206900 1 4206900 Items[0].tag.Compressed set from storage suso:pldata working_data.offhand

loot replace entity @s weapon.offhand 1 mine 4206900 1 4206900 air{drop_contents:1b}