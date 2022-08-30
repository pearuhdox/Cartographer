item replace block 4206900 1 4206900 container.0 with air 1
data modify block 4206900 1 4206900 Items append from entity @s Inventory[{Slot:-106b}].tag.Compressed
loot replace entity @s weapon.offhand 1 mine 4206900 1 4206900 air{drop_contents:1b}

playsound minecraft:item.trident.return player @s ~ ~ ~ .1 .3 .3
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ .3 1.3 .5