#Tell Cartographer this pack is in use
scoreboard players set $loot_additions ca.installed 1

execute as @a[scores={ca.break_head=1..}] at @s run function cartographer_loot_additions:drops/handler

execute as @a[scores={ca.break_whead=1..}] at @s run function cartographer_loot_additions:drops/handler

execute as @a[scores={ca.loot_sneak=0},nbt={SelectedItem:{id:"minecraft:debug_stick",tag:{LootWand:1,DebugProperty:{"minecraft:chest":"facing"}}}}] at @s run function cartographer_loot_additions:wand/use_wand
execute as @a[scores={ca.loot_sneak=0},nbt={SelectedItem:{id:"minecraft:debug_stick",tag:{LootWand:1,DebugProperty:{"minecraft:chest":"type"}}}}] at @s run function cartographer_loot_additions:wand/use_wand
execute as @a[scores={ca.loot_sneak=0},nbt={SelectedItem:{id:"minecraft:debug_stick",tag:{LootWand:1,DebugProperty:{"minecraft:chest":"waterlogged"}}}}] at @s run function cartographer_loot_additions:wand/use_wand

execute as @a[scores={ca.loot_sneak=1..},nbt={SelectedItem:{id:"minecraft:debug_stick",tag:{LootWand:1,DebugProperty:{"minecraft:chest":"facing"}}}}] at @s run function cartographer_loot_additions:wand/use_wand_sneak
execute as @a[scores={ca.loot_sneak=1..},nbt={SelectedItem:{id:"minecraft:debug_stick",tag:{LootWand:1,DebugProperty:{"minecraft:chest":"type"}}}}] at @s run function cartographer_loot_additions:wand/use_wand_sneak
execute as @a[scores={ca.loot_sneak=1..},nbt={SelectedItem:{id:"minecraft:debug_stick",tag:{LootWand:1,DebugProperty:{"minecraft:chest":"waterlogged"}}}}] at @s run function cartographer_loot_additions:wand/use_wand_sneak

scoreboard players set @a ca.break_head 0
scoreboard players set @a ca.break_whead 0
scoreboard players set @a ca.loot_sneak 0