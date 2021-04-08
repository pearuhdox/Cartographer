tag @s add processed_two_handed
tag @s add is_two_handing

replaceitem block 4206900 1 4206900 container.0 air 1

replaceitem block 4206900 1 4206900 container.0 firework_star{IsCompressed:1,display:{Name:'{"text":"Compressed Item","color":"#02C497","italic":false}',Lore:['[{"text":"The crushing weight of a ","color":"gray","italic":false},{"text":"Two Handed","color":"red","italic":false}]','{"text":"item has compressed this item into","color":"gray","italic":false}','{"text":"an unusable state. Ceasing to hold","color":"gray","italic":false}','[{"text":"the ","color":"gray","italic":false},{"text":"Two Handed ","color":"red","italic":false},{"text":"item should return it","color":"gray","italic":false}]','{"text":"to its normal size and functionality.","color":"gray","italic":false}']},HideFlags:32,Compressed:{},Explosion:{Type:4,Colors:[I;181399]}} 1
data modify block 4206900 1 4206900 Items[0].tag.Compressed set from storage cartographer_core:pldata working_data.offhand

loot replace entity @s weapon.offhand 1 mine 4206900 1 4206900 air{drop_contents:1b}

execute as @s at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ .3 .3 .3
execute as @s at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ .5 1.3 .5