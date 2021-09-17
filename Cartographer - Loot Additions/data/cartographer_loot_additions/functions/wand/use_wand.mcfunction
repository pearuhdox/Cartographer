title @s actionbar {"text":"Chest Loot Table Seed Set!","color":"yellow","italic":false}

scoreboard players set @s ca.raycast 21
execute if block ~ ~1.5 ~ #cartographer_core:containers run tag @s add found_container
execute unless block ~ ~1.5 ~ #cartographer_core:containers as @s positioned ~ ~1.5 ~ run function cartographer_loot_additions:chest/find_recurse

execute if entity @s[tag=found_container] run say found container

tag @s remove found_container

item replace entity @s weapon.mainhand with debug_stick{display:{Name:'{"text":"< Cartographer Loot Additions Wand >","color":"#FFF170","bold":true,"italic":false}',Lore:['[{"keybind":"key.attack","color":"gray","italic":false},{"text":" while looking at a chest to","color":"white","italic":false}]','{"text":"set its loot table seed.","color":"white","italic":false}','[{"keybind":"key.attack","color":"gray","italic":false},{"text":" + ","color":"gray","italic":false},{"keybind":"key.sneak","italic":false},{"text":" while looking at","color":"white","italic":false}]','{"text":"a chest to analyze its contents.","color":"white","italic":false}']},HideFlags:1,LootWand:1,Enchantments:[{id:"minecraft:mending",lvl:1s}]} 1