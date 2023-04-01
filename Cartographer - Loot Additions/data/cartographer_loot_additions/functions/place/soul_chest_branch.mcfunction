data modify entity @s item.tag.BlockEntityTag.Items set from storage cartographer_loot_additions:soul_chest Items
execute store result score @s ca.soul_count run data get storage cartographer_loot_additions:soul_chest Items
execute store result score @s ca.soul_total run data get storage cartographer_loot_additions:soul_chest Items
scoreboard players operation @s ca.facing = $facing_sc ca.loot_var