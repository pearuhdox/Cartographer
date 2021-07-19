tag @s remove is_two_handing

item replace block 4206900 1 4206900 container.0 with air 1
data modify block 4206900 1 4206900 Items append from storage suso:pldata working_data.offhand

loot replace entity @s weapon.offhand 1 mine 4206900 1 4206900 air{drop_contents:1b}

execute run playsound minecraft:item.trident.return player @s ~ ~ ~ .3 .3 .3
execute run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ .5 1.3 .5

tag @s add processed_two_handed