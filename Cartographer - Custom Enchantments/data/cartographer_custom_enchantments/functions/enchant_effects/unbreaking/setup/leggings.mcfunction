scoreboard players set $unb_succeed ca.ench_var 0

data modify block 4206900 0 4206900 Items set value []
data modify storage cartographer_custom_enchantments:unbreaking data set value {}

data modify storage cartographer_custom_enchantments:unbreaking data set from entity @s Inventory[{Slot:101b}]
data remove storage cartographer_custom_enchantments:unbreaking data.Slot

data modify block 4206900 0 4206900 Items append from storage cartographer_custom_enchantments:unbreaking data

scoreboard players operation $dur ca.unbreaking = @s ca.unb_legs

function cartographer_custom_enchantments:enchant_effects/unbreaking/do_changes

execute if score $unb_succeed ca.ench_var matches 1.. run loot replace entity @s armor.legs 1 mine 4206900 0 4206900 air{drop_contents:1b}

stopsound @s * minecraft:item.armor.equip_leather
stopsound @s player minecraft:item.armor.equip_gold
stopsound @s player minecraft:item.armor.equip_chain
stopsound @s player minecraft:item.armor.equip_iron
stopsound @s player minecraft:item.armor.equip_diamond
stopsound @s player minecraft:item.armor.equip_netherite
stopsound @s player minecraft:item.armor.equip_elytra
stopsound @s player minecraft:item.armor.equip_turtle
stopsound @s player minecraft:item.armor.equip_generic