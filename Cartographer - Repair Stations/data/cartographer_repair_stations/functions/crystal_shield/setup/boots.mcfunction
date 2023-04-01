data modify block 4206900 0 4206900 Items set value []
data modify storage cartographer_repair_stations:crystal_shield data set value {}

data modify storage cartographer_repair_stations:crystal_shield data set from entity @s Inventory[{Slot:100b}]
data remove storage cartographer_repair_stations:crystal_shield data.Slot

data modify block 4206900 0 4206900 Items append from storage cartographer_repair_stations:crystal_shield data

function cartographer_repair_stations:crystal_shield/do_changes

loot replace entity @s armor.feet 1 mine 4206900 0 4206900 air{drop_contents:1b}

stopsound @s player minecraft:item.armor.equip_leather
stopsound @s player minecraft:item.armor.equip_gold
stopsound @s player minecraft:item.armor.equip_chain
stopsound @s player minecraft:item.armor.equip_iron
stopsound @s player minecraft:item.armor.equip_diamond
stopsound @s player minecraft:item.armor.equip_netherite
stopsound @s player minecraft:item.armor.equip_elytra
stopsound @s player minecraft:item.armor.equip_turtle
stopsound @s player minecraft:item.armor.equip_generic