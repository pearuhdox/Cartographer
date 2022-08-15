#Setup trade
data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:1,buy:{id:"minecraft:dirt",Count:8b},sell:{id:"minecraft:barrier",Count:1b}}

#Make the Current value a separate data index
data modify storage cartographer_repair_stations:tesseract Data.Current set value {}
data modify storage cartographer_repair_stations:tesseract Data.Current set from storage cartographer_repair_stations:tesseract Data.Queue[0] 

#Remove Slot data from Current
data remove storage cartographer_repair_stations:tesseract Data.Current.Slot

#Remove Current from Queue
data remove storage cartographer_repair_stations:tesseract Data.Queue[0]

#Assign the correct buy item based on data
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:wooden_sword"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:stick",Count:4b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:wooden_hoe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:stick",Count:4b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:wooden_pickaxe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:stick",Count:4b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:wooden_shovel"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:stick",Count:4b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:wooden_sword"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:stick",Count:4b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:stone_axe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:stone_hoe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:stone_pickaxe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:stone_shovel"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:stone_sword"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",Count:2b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_axe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_hoe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_pickaxe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_shovel"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_sword"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:flint_and_steel"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:shears"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_axe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_hoe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_pickaxe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_shovel"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_sword"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_axe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_hoe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_pickaxe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_shovel"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_sword"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_axe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_scrap",Count:3b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_hoe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_scrap",Count:3b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_pickaxe"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_scrap",Count:3b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_shovel"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_scrap",Count:3b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_sword"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_scrap",Count:3b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:leather_helmet"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:leather",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:leather_chestplate"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:leather",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:leather_leggings"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:leather",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:leather_boots"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:leather",Count:2b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_helmet"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_chestplate"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_leggings"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:golden_boots"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:chainmail_helmet"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:chain",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:chainmail_chestplate"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:chain",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:chainmail_leggings"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:chain",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:chainmail_boots"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:chain",Count:2b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_helmet"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_chestplate"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_leggings"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:iron_boots"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_helmet"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_chestplate"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_leggings"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:diamond_boots"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_helmet"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_scrap",Count:3b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_chestplate"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_scrap",Count:3b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_leggings"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_scrap",Count:3b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:netherite_boots"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_scrap",Count:3b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:shield"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:bow"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:string",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:crossbow"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:string",Count:2b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:trident"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:quartz",Count:2b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:turtle_helmet"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:scute",Count:2b}

execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:carrot_on_a_stick"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:carrot",Count:2b}
execute if data storage cartographer_repair_stations:tesseract Data.Current{id:"minecraft:warped_fungus_on_a_stick"} run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:warped_fungus",Count:2b}

#Make Sell Item Current Item
data modify entity @s Offers.Recipes[-1].sell set from storage cartographer_repair_stations:tesseract Data.Current

#Recurse condition. Iterate until nothing left.
execute if data storage cartographer_repair_stations:tesseract Data.Queue[0] run function cartographer_repair_stations:void_bag/add_items_recurse