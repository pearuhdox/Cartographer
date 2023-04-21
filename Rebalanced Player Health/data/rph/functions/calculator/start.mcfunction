data modify storage rph:inventory Inventory set value {}
data modify storage rph:inventory Inventory set from entity @s Inventory

data modify storage rph:inventory Items set value []

data modify storage rph:inventory Items append value {}
data modify storage rph:inventory Items append value {}
data modify storage rph:inventory Items append value {}
data modify storage rph:inventory Items append value {}
data modify storage rph:inventory Items append value {}
data modify storage rph:inventory Items append value {}

execute unless entity @s[predicate=rph:hold_armor_mainhand] run data modify storage rph:inventory Items[0] set from entity @s SelectedItem
execute unless entity @s[predicate=rph:shattered/boots] run data modify storage rph:inventory Items[1] set from storage rph:inventory Inventory[{Slot:100b}]
execute unless entity @s[predicate=rph:shattered/legs] run data modify storage rph:inventory Items[2] set from storage rph:inventory Inventory[{Slot:101b}]
execute unless entity @s[predicate=rph:shattered/chestplate] run data modify storage rph:inventory Items[3] set from storage rph:inventory Inventory[{Slot:102b}]
execute unless entity @s[predicate=rph:shattered/helmet] run data modify storage rph:inventory Items[4] set from storage rph:inventory Inventory[{Slot:103b}]
execute unless entity @s[predicate=rph:hold_armor_offhand] run data modify storage rph:inventory Items[5] set from storage rph:inventory Inventory[{Slot:-106b}]

tag @s remove ca.block_soul_speed

#Remove Soul Speed
execute if predicate rph:shattered/do/boots run tag @s add ca.block_soul_speed
execute if predicate rph:shattered/do/boots run tag @s add ca.block_soul_speed

execute if predicate rph:shattered/boots run tag @s add ca.block_soul_speed
execute if predicate rph:shattered/boots run tag @s add ca.block_soul_speed


function rph:calculator/health

function rph:calculator/armor

function rph:calculator/defense_enchants
