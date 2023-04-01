data modify storage cartographer_loot_additions:cache data set value {}
data modify storage cartographer_loot_additions:cache data.Items set from entity @s item.tag.BlockEntityTag.Items


data modify entity @s item.id set value "minecraft:player_head"
data modify entity @s item.tag.SkullOwner set value {Id:[I;-1936692059,-2066265281,-1789187408,-1837397849],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWM5NmJlNzg4NmViN2RmNzU1MjVhMzYzZTVmNTQ5NjI2YzIxMzg4ZjBmZGE5ODhhNmU4YmY0ODdhNTMifX19"}]}}

data modify entity @s item.tag.StoredItems set from storage cartographer_loot_additions:cache data.Items

function dies:func/menu/change_setting/individual/pose/any

scoreboard players set @s dies.object.display.pose 4
scoreboard players set @s dies.object.display.size 4

function dies:func/update_pose/main

scoreboard players set $target_light_level dies.master 10
function dies:func/item_display/update/light_level

playsound minecraft:block.chest.close player @p ~ ~ ~ 0.5 1

tp @s ~ ~-0.4 ~