
data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:1,buy:{id:"minecraft:dirt",Count:8b},sell:{id:"minecraft:barrier",Count:1b}}

data modify entity @s Offers.Recipes[-1].sell set from storage suso:pldata working_data.VoidedItemsCopy[0]

data modify entity @s ArmorItems[0] set from entity @s Offers.Recipes[-1].sell

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:wooden_axe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:stick",Count:4b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:wooden_hoe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:stick",Count:4b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:wooden_pickaxe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:stick",Count:4b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:wooden_shovel"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:stick",Count:4b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:wooden_sword"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:stick",Count:4b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:stone_axe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:stone_hoe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:stone_pickaxe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:stone_shovel"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:stone_sword"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:cobblestone",Count:2b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:iron_axe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:iron_hoe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:iron_pickaxe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:iron_shovel"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:iron_sword"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:flint_and_steel"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:shears"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:golden_axe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:golden_hoe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:golden_pickaxe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:golden_shovel"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:golden_sword"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:diamond_axe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:diamond_hoe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:diamond_pickaxe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:diamond_shovel"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:diamond_sword"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:netherite_axe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",Count:1b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:netherite_hoe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",Count:1b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:netherite_pickaxe"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",Count:1b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:netherite_shovel"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",Count:1b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:netherite_sword"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",Count:1b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:leather_helmet"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:leather",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:leather_chestplate"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:leather",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:leather_leggings"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:leather",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:leather_boots"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:leather",Count:2b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:golden_helmet"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:golden_chestplate"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:golden_leggings"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:golden_boots"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:gold_ingot",Count:2b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:chainmail_helmet"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:chain",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:chainmail_chestplate"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:chain",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:chainmail_leggings"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:chain",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:chainmail_boots"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:chain",Count:2b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:iron_helmet"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:iron_chestplate"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:iron_leggings"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:iron_boots"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:diamond_helmet"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:diamond_chestplate"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:diamond_leggings"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:diamond_boots"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:2b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:netherite_helmet"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",Count:1b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:netherite_chestplate"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",Count:1b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:netherite_leggings"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",Count:1b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:netherite_boots"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:netherite_ingot",Count:1b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:shield"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:iron_ingot",Count:2b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:bow"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:string",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:crossbow"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:string",Count:2b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:trident"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:quartz",Count:2b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:turtle_helmet"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:scute",Count:2b}

execute if entity @s[nbt={ArmorItems:[{id:"minecraft:carrot_on_a_stick"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:carrot",Count:2b}
execute if entity @s[nbt={ArmorItems:[{id:"minecraft:warped_fungus_on_a_stick"},{},{},{}]}] run data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:warped_fungus",Count:2b}


data remove storage suso:pldata working_data.VoidedItemsCopy[0]

#Recurse condition. Iterate until nothing left.
execute if data storage suso:pldata working_data.VoidedItemsCopy[0] run function cartographer_repair_stations:void_bag/pick_trade_recurse