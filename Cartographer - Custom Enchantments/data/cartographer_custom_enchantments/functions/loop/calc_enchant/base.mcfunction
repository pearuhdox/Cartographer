function cartographer_custom_enchantments:loop/calc_enchant/reset

#Specific to Divinity's End (this will be removed in the next version) do the babylon armor calculation.
execute as @a[predicate=de_pear:items/babylon_head] run execute as @s[predicate=de_pear:items/babylon_chest] run execute as @s[predicate=de_pear:items/babylon_legs] run execute as @s[predicate=de_pear:items/babylon_feet] run scoreboard players set @s evasion 2

function cartographer_custom_enchantments:loop/calc_enchant/head
function cartographer_custom_enchantments:loop/calc_enchant/chest
function cartographer_custom_enchantments:loop/calc_enchant/legs
function cartographer_custom_enchantments:loop/calc_enchant/feet
function cartographer_custom_enchantments:loop/calc_enchant/offhand
function cartographer_custom_enchantments:loop/calc_enchant/mainhand
function cartographer_custom_enchantments:loop/calc_enchant/set_max

function cartographer_custom_enchantments:loop/calc_enchant/auto_charge

function cartographer_custom_enchantments:loop/calc_enchant/curse_two_handed

function cartographer_custom_enchantments:loop/calc_enchant/curse_malevolence


#Two Handed Item Replacement is done specifically here, because its in line with the 5 tick timer.
execute if entity @a[scores={curse_two_handed=1..}] as @a[scores={curse_two_handed=1..}] at @s run execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{Knapsack:1}}]}] run function cartographer_custom_enchantments:loop/enchant_effects/curse_two_handed

schedule function cartographer_custom_enchantments:loop/calc_enchant/base 5t