scoreboard players operation @e[type=item_display,tag=ca.locked_chest,limit=1,sort=nearest] ca.facing = $facing_lc ca.loot_var
scoreboard players set @e[type=item_display,tag=ca.locked_chest,limit=1,sort=nearest] ca.locked_stage 1
data modify entity @s item.tag.BlockEntityTag.Items set from storage cartographer_loot_additions:locked_chest Items
