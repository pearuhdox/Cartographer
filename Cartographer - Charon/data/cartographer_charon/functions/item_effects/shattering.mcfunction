execute store result score $charon_item ca.cur_dmg run data get storage cartographer_charon:player temp.tag.Damage
execute store result score $charon_item ca.dmg_to_deal run data get storage cartographer_charon:player temp.tag.Damage

execute if data storage cartographer_charon:player temp{id:"minecraft:turtle_helmet"} run scoreboard players set $charon_item ca.max_dmg 275

execute if data storage cartographer_charon:player temp{id:"minecraft:elytra"} run scoreboard players set $charon_item ca.max_dmg 432

execute if data storage cartographer_charon:player temp{id:"minecraft:leather_helmet"} run scoreboard players set $charon_item ca.max_dmg 55
execute if data storage cartographer_charon:player temp{id:"minecraft:leather_chestplate"} run scoreboard players set $charon_item ca.max_dmg 80
execute if data storage cartographer_charon:player temp{id:"minecraft:leather_leggings"} run scoreboard players set $charon_item ca.max_dmg 75
execute if data storage cartographer_charon:player temp{id:"minecraft:leather_boots"} run scoreboard players set $charon_item ca.max_dmg 65

execute if data storage cartographer_charon:player temp{id:"minecraft:golden_helmet"} run scoreboard players set $charon_item ca.max_dmg 77
execute if data storage cartographer_charon:player temp{id:"minecraft:golden_chestplate"} run scoreboard players set $charon_item ca.max_dmg 112
execute if data storage cartographer_charon:player temp{id:"minecraft:golden_leggings"} run scoreboard players set $charon_item ca.max_dmg 105
execute if data storage cartographer_charon:player temp{id:"minecraft:golden_boots"} run scoreboard players set $charon_item ca.max_dmg 91

execute if data storage cartographer_charon:player temp{id:"minecraft:chainmail_helmet"} run scoreboard players set $charon_item ca.max_dmg 165
execute if data storage cartographer_charon:player temp{id:"minecraft:chainmail_chestplate"} run scoreboard players set $charon_item ca.max_dmg 240
execute if data storage cartographer_charon:player temp{id:"minecraft:chainmail_leggings"} run scoreboard players set $charon_item ca.max_dmg 225
execute if data storage cartographer_charon:player temp{id:"minecraft:chainmail_boots"} run scoreboard players set $charon_item ca.max_dmg 195

execute if data storage cartographer_charon:player temp{id:"minecraft:iron_helmet"} run scoreboard players set $charon_item ca.max_dmg 165
execute if data storage cartographer_charon:player temp{id:"minecraft:iron_chestplate"} run scoreboard players set $charon_item ca.max_dmg 240
execute if data storage cartographer_charon:player temp{id:"minecraft:iron_leggings"} run scoreboard players set $charon_item ca.max_dmg 225
execute if data storage cartographer_charon:player temp{id:"minecraft:iron_boots"} run scoreboard players set $charon_item ca.max_dmg 195

execute if data storage cartographer_charon:player temp{id:"minecraft:diamond_helmet"} run scoreboard players set $charon_item ca.max_dmg 363
execute if data storage cartographer_charon:player temp{id:"minecraft:diamond_chestplate"} run scoreboard players set $charon_item ca.max_dmg 528
execute if data storage cartographer_charon:player temp{id:"minecraft:diamond_leggings"} run scoreboard players set $charon_item ca.max_dmg 495
execute if data storage cartographer_charon:player temp{id:"minecraft:diamond_boots"} run scoreboard players set $charon_item ca.max_dmg 429

execute if data storage cartographer_charon:player temp{id:"minecraft:netherite_helmet"} run scoreboard players set $charon_item ca.max_dmg 407
execute if data storage cartographer_charon:player temp{id:"minecraft:netherite_chestplate"} run scoreboard players set $charon_item ca.max_dmg 592
execute if data storage cartographer_charon:player temp{id:"minecraft:netherite_leggings"} run scoreboard players set $charon_item ca.max_dmg 555
execute if data storage cartographer_charon:player temp{id:"minecraft:netherite_boots"} run scoreboard players set $charon_item ca.max_dmg 481

execute if data storage cartographer_charon:player temp{id:"minecraft:wooden_axe"} run scoreboard players set $charon_item ca.max_dmg 59
execute if data storage cartographer_charon:player temp{id:"minecraft:wooden_hoe"} run scoreboard players set $charon_item ca.max_dmg 59
execute if data storage cartographer_charon:player temp{id:"minecraft:wooden_pickaxe"} run scoreboard players set $charon_item ca.max_dmg 59
execute if data storage cartographer_charon:player temp{id:"minecraft:wooden_shovel"} run scoreboard players set $charon_item ca.max_dmg 59
execute if data storage cartographer_charon:player temp{id:"minecraft:wooden_sword"} run scoreboard players set $charon_item ca.max_dmg 59

execute if data storage cartographer_charon:player temp{id:"minecraft:stone_axe"} run scoreboard players set $charon_item ca.max_dmg 131
execute if data storage cartographer_charon:player temp{id:"minecraft:stone_hoe"} run scoreboard players set $charon_item ca.max_dmg 131
execute if data storage cartographer_charon:player temp{id:"minecraft:stone_pickaxe"} run scoreboard players set $charon_item ca.max_dmg 131
execute if data storage cartographer_charon:player temp{id:"minecraft:stone_shovel"} run scoreboard players set $charon_item ca.max_dmg 131
execute if data storage cartographer_charon:player temp{id:"minecraft:stone_sword"} run scoreboard players set $charon_item ca.max_dmg 131

execute if data storage cartographer_charon:player temp{id:"minecraft:golden_axe"} run scoreboard players set $charon_item ca.max_dmg 32
execute if data storage cartographer_charon:player temp{id:"minecraft:golden_hoe"} run scoreboard players set $charon_item ca.max_dmg 32
execute if data storage cartographer_charon:player temp{id:"minecraft:golden_pickaxe"} run scoreboard players set $charon_item ca.max_dmg 32
execute if data storage cartographer_charon:player temp{id:"minecraft:golden_shovel"} run scoreboard players set $charon_item ca.max_dmg 32
execute if data storage cartographer_charon:player temp{id:"minecraft:golden_sword"} run scoreboard players set $charon_item ca.max_dmg 32

execute if data storage cartographer_charon:player temp{id:"minecraft:iron_axe"} run scoreboard players set $charon_item ca.max_dmg 250
execute if data storage cartographer_charon:player temp{id:"minecraft:iron_hoe"} run scoreboard players set $charon_item ca.max_dmg 250
execute if data storage cartographer_charon:player temp{id:"minecraft:iron_pickaxe"} run scoreboard players set $charon_item ca.max_dmg 250
execute if data storage cartographer_charon:player temp{id:"minecraft:iron_shovel"} run scoreboard players set $charon_item ca.max_dmg 250
execute if data storage cartographer_charon:player temp{id:"minecraft:iron_sword"} run scoreboard players set $charon_item ca.max_dmg 250

execute if data storage cartographer_charon:player temp{id:"minecraft:diamond_axe"} run scoreboard players set $charon_item ca.max_dmg 1561
execute if data storage cartographer_charon:player temp{id:"minecraft:diamond_hoe"} run scoreboard players set $charon_item ca.max_dmg 1561
execute if data storage cartographer_charon:player temp{id:"minecraft:diamond_pickaxe"} run scoreboard players set $charon_item ca.max_dmg 1561
execute if data storage cartographer_charon:player temp{id:"minecraft:diamond_shovel"} run scoreboard players set $charon_item ca.max_dmg 1561
execute if data storage cartographer_charon:player temp{id:"minecraft:diamond_sword"} run scoreboard players set $charon_item ca.max_dmg 1561

execute if data storage cartographer_charon:player temp{id:"minecraft:netherite_axe"} run scoreboard players set $charon_item ca.max_dmg 2031
execute if data storage cartographer_charon:player temp{id:"minecraft:netherite_hoe"} run scoreboard players set $charon_item ca.max_dmg 2031
execute if data storage cartographer_charon:player temp{id:"minecraft:netherite_pickaxe"} run scoreboard players set $charon_item ca.max_dmg 2031
execute if data storage cartographer_charon:player temp{id:"minecraft:netherite_shovel"} run scoreboard players set $charon_item ca.max_dmg 2031
execute if data storage cartographer_charon:player temp{id:"minecraft:netherite_sword"} run scoreboard players set $charon_item ca.max_dmg 2031

scoreboard players operation $charon_item ca.dmg_to_deal = $charon_item ca.max_dmg
scoreboard players operation $charon_item ca.dmg_to_deal -= $charon_item ca.cur_dmg

scoreboard players operation $charon_item ca.dmg_to_deal /= $2 ca.CONSTANT

#scoreboard players operation $charon_item ca.dmg_to_deal += $charon_item ca.cur_dmg

execute store result storage cartographer_charon:player temp.tag.Damage int 1 run scoreboard players operation $charon_item ca.dmg_to_deal += $charon_item ca.cur_dmg