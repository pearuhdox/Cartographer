setblock 4206900 2 4206900 air replace
execute as @p unless score @s ca.loot_table_rules matches 1 run setblock 4206900 2 4206900 purple_shulker_box{LootTableSeed:0,LootTable:"cartographer_loot_additions:pots/mob"} replace
execute as @p if score @s ca.loot_table_rules matches 1 run setblock 4206900 2 4206900 purple_shulker_box{LootTableSeed:0,LootTable:"cartographer_loot_additions:pots/mob_2"} replace

tag @s add loot_add_custom

playsound minecraft:block.decorated_pot.shatter player @a ~ ~ ~ 1.2 0.75