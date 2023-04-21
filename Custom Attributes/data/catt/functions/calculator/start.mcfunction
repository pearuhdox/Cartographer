data modify storage catt:inventory Inventory set value {}
data modify storage catt:inventory Inventory set from entity @s Inventory

data modify storage catt:inventory Items set value []

data modify storage catt:inventory Items append value {}
data modify storage catt:inventory Items append value {}
data modify storage catt:inventory Items append value {}
data modify storage catt:inventory Items append value {}
data modify storage catt:inventory Items append value {}
data modify storage catt:inventory Items append value {}

execute unless entity @s[predicate=catt:hold_armor_mainhand] run data modify storage catt:inventory Items[0] set from entity @s SelectedItem
execute unless entity @s[predicate=catt:shattered/boots] run data modify storage catt:inventory Items[1] set from storage catt:inventory Inventory[{Slot:100b}]
execute unless entity @s[predicate=catt:shattered/legs] run data modify storage catt:inventory Items[2] set from storage catt:inventory Inventory[{Slot:101b}]
execute unless entity @s[predicate=catt:shattered/chestplate] run data modify storage catt:inventory Items[3] set from storage catt:inventory Inventory[{Slot:102b}]
execute unless entity @s[predicate=catt:shattered/helmet] run data modify storage catt:inventory Items[4] set from storage catt:inventory Inventory[{Slot:103b}]
execute unless entity @s[predicate=catt:hold_armor_offhand] run data modify storage rph:inventory Items[5] set from storage catt:inventory Inventory[{Slot:-106b}]


function catt:calculator/speed
function catt:calculator/atkspeed
function catt:calculator/atkdamage
function catt:calculator/kbres
function catt:calculator/ranged
