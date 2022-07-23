execute store result score @s ca.cur_dmg run data get entity @s Item.tag.Damage
execute store result score @s ca.dmg_to_deal run data get entity @s Item.tag.Damage

data modify storage cartographer_custom_enchantments:shattering temp_item set from entity @s Item.id

execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:turtle_helmet"} run scoreboard players set @s ca.max_dmg 275

execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:elytra"} run scoreboard players set @s ca.max_dmg 432

execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:leather_helmet"} run scoreboard players set @s ca.max_dmg 55
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:leather_chestplate"} run scoreboard players set @s ca.max_dmg 80
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:leather_leggings"} run scoreboard players set @s ca.max_dmg 75
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:leather_boots"} run scoreboard players set @s ca.max_dmg 65

execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:golden_helmet"} run scoreboard players set @s ca.max_dmg 77
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:golden_chestplate"} run scoreboard players set @s ca.max_dmg 112
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:golden_leggings"} run scoreboard players set @s ca.max_dmg 105
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:golden_boots"} run scoreboard players set @s ca.max_dmg 91

execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:chainmail_helmet"} run scoreboard players set @s ca.max_dmg 165
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:chainmail_chestplate"} run scoreboard players set @s ca.max_dmg 240
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:chainmail_leggings"} run scoreboard players set @s ca.max_dmg 225
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:chainmail_boots"} run scoreboard players set @s ca.max_dmg 195

execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:iron_helmet"} run scoreboard players set @s ca.max_dmg 165
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:iron_chestplate"} run scoreboard players set @s ca.max_dmg 240
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:iron_leggings"} run scoreboard players set @s ca.max_dmg 225
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:iron_boots"} run scoreboard players set @s ca.max_dmg 195

execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:diamond_helmet"} run scoreboard players set @s ca.max_dmg 363
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:diamond_chestplate"} run scoreboard players set @s ca.max_dmg 528
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:diamond_leggings"} run scoreboard players set @s ca.max_dmg 495
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:diamond_boots"} run scoreboard players set @s ca.max_dmg 429

execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:netherite_helmet"} run scoreboard players set @s ca.max_dmg 407
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:netherite_chestplate"} run scoreboard players set @s ca.max_dmg 592
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:netherite_leggings"} run scoreboard players set @s ca.max_dmg 555
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:netherite_boots"} run scoreboard players set @s ca.max_dmg 481

execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:wooden_axe"} run scoreboard players set @s ca.max_dmg 59
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:wooden_hoe"} run scoreboard players set @s ca.max_dmg 59
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:wooden_pickaxe"} run scoreboard players set @s ca.max_dmg 59
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:wooden_shovel"} run scoreboard players set @s ca.max_dmg 59
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:wooden_sword"} run scoreboard players set @s ca.max_dmg 59

execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:stone_axe"} run scoreboard players set @s ca.max_dmg 131
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:stone_hoe"} run scoreboard players set @s ca.max_dmg 131
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:stone_pickaxe"} run scoreboard players set @s ca.max_dmg 131
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:stone_shovel"} run scoreboard players set @s ca.max_dmg 131
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:stone_sword"} run scoreboard players set @s ca.max_dmg 131

execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:golden_axe"} run scoreboard players set @s ca.max_dmg 32
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:golden_hoe"} run scoreboard players set @s ca.max_dmg 32
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:golden_pickaxe"} run scoreboard players set @s ca.max_dmg 32
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:golden_shovel"} run scoreboard players set @s ca.max_dmg 32
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:golden_sword"} run scoreboard players set @s ca.max_dmg 32

execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:iron_axe"} run scoreboard players set @s ca.max_dmg 250
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:iron_hoe"} run scoreboard players set @s ca.max_dmg 250
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:iron_pickaxe"} run scoreboard players set @s ca.max_dmg 250
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:iron_shovel"} run scoreboard players set @s ca.max_dmg 250
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:iron_sword"} run scoreboard players set @s ca.max_dmg 250

execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:diamond_axe"} run scoreboard players set @s ca.max_dmg 1561
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:diamond_hoe"} run scoreboard players set @s ca.max_dmg 1561
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:diamond_pickaxe"} run scoreboard players set @s ca.max_dmg 1561
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:diamond_shovel"} run scoreboard players set @s ca.max_dmg 1561
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:diamond_sword"} run scoreboard players set @s ca.max_dmg 1561

execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:netherite_axe"} run scoreboard players set @s ca.max_dmg 2031
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:netherite_hoe"} run scoreboard players set @s ca.max_dmg 2031
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:netherite_pickaxe"} run scoreboard players set @s ca.max_dmg 2031
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:netherite_shovel"} run scoreboard players set @s ca.max_dmg 2031
execute if data storage cartographer_custom_enchantments:shattering {temp_item:"minecraft:netherite_sword"} run scoreboard players set @s ca.max_dmg 2031

scoreboard players operation @s ca.dmg_to_deal = @s ca.max_dmg
scoreboard players operation @s ca.dmg_to_deal -= @s ca.cur_dmg

scoreboard players operation @s ca.dmg_to_deal /= $2 ca.CONSTANT

#scoreboard players operation @s ca.dmg_to_deal += @s ca.cur_dmg

execute store result entity @s Item.tag.Damage int 1 run scoreboard players operation @s ca.dmg_to_deal += @s ca.cur_dmg