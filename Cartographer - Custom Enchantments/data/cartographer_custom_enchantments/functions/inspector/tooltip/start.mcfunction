playsound minecraft:item.book.page_turn player @s ~ ~ ~ 0.8 0.75
playsound minecraft:ui.cartography_table.take_result player @s ~ ~ ~ 0.9 1.5

scoreboard players set @s ca.glass_cdl 2

data modify storage cartographer_custom_enchantments:inspector lore set value []

data modify storage cartographer_custom_enchantments:inspector lore append value '{"fallback":"Effects: ","translate":"cartographer.systems.glass_desc.effects","color":"gray","italic":false}'

execute if data storage cartographer_custom_enchantments:inspector itr.tag.CustomEnchantments[0] run function cartographer_custom_enchantments:inspector/tooltip/enchantments/recurse