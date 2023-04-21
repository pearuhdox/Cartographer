data modify storage rph:armor_dura items set value [{},{},{},{}]

data modify storage rph:armor_dura items[0] set from entity @s Inventory[{Slot:100b}]
data modify storage rph:armor_dura items[1] set from entity @s Inventory[{Slot:101b}]
data modify storage rph:armor_dura items[2] set from entity @s Inventory[{Slot:102b}]
data modify storage rph:armor_dura items[3] set from entity @s Inventory[{Slot:103b}]

data modify storage rph:armor_dura items[0].Slot set value 0b
data modify storage rph:armor_dura items[1].Slot set value 1b
data modify storage rph:armor_dura items[2].Slot set value 2b
data modify storage rph:armor_dura items[3].Slot set value 3b

execute store result score $feet rph.durability run data get storage rph:armor_dura items[0].tag.Damage
execute store result score $legs rph.durability run data get storage rph:armor_dura items[1].tag.Damage
execute store result score $body rph.durability run data get storage rph:armor_dura items[2].tag.Damage
execute store result score $head rph.durability run data get storage rph:armor_dura items[3].tag.Damage

execute store result score $unb rph.durability run data get storage rph:armor_dura items[0].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players set $dmg rph.durability 1
function rph:health/do_unbreaking
execute unless predicate rph:shattered/boots store result storage rph:armor_dura items[0].tag.Damage int 1 run scoreboard players operation $feet rph.durability += $dmg rph.durability

execute store result score $unb rph.durability run data get storage rph:armor_dura items[1].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players set $dmg rph.durability 1
function rph:health/do_unbreaking
execute unless predicate rph:shattered/legs store result storage rph:armor_dura items[1].tag.Damage int 1 run scoreboard players operation $legs rph.durability += $dmg rph.durability

execute store result score $unb rph.durability run data get storage rph:armor_dura items[2].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players set $dmg rph.durability 1
function rph:health/do_unbreaking
execute unless predicate rph:shattered/chestplate store result storage rph:armor_dura items[2].tag.Damage int 1 run scoreboard players operation $body rph.durability += $dmg rph.durability

execute store result score $unb rph.durability run data get storage rph:armor_dura items[3].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players set $dmg rph.durability 1
function rph:health/do_unbreaking
execute unless predicate rph:shattered/helmet store result storage rph:armor_dura items[3].tag.Damage int 1 run scoreboard players operation $head rph.durability += $dmg rph.durability

data modify block 4206907 5 4206907 Items set from storage rph:armor_dura items

execute if predicate rph:shattered/do/boots run playsound entity.item.break player @a ~ ~ ~ 1 1
execute if predicate rph:shattered/do/legs run playsound entity.item.break player @a ~ ~ ~ 1 1
execute if predicate rph:shattered/do/chestplate run playsound entity.item.break player @a ~ ~ ~ 1 1
execute if predicate rph:shattered/do/helmet run playsound entity.item.break player @a ~ ~ ~ 1 1

loot replace entity @s armor.feet 4 mine 4206907 5 4206907 air{drop_contents:1b}

stopsound @s player minecraft:item.armor.equip_leather
stopsound @s player minecraft:item.armor.equip_gold
stopsound @s player minecraft:item.armor.equip_chain
stopsound @s player minecraft:item.armor.equip_iron
stopsound @s player minecraft:item.armor.equip_diamond
stopsound @s player minecraft:item.armor.equip_netherite
stopsound @s player minecraft:item.armor.equip_turtle
stopsound @s player minecraft:item.armor.equip_elytra
