data modify storage cartographer_custom_enchantments:repeating Inventory set value []
data modify storage cartographer_custom_enchantments:repeating Inventory set from entity @s Inventory

data modify storage cartographer_custom_enchantments:repeating ArrowList set value []
data modify storage cartographer_custom_enchantments:repeating Quiver set value []
data modify storage cartographer_custom_enchantments:repeating Arrow set value {}
function cartographer_custom_enchantments:enchant_effects/repeating/recurse/get_arrows

scoreboard players set $ammo_ct ca.ench_var 0
scoreboard players set $ammo_normal ca.ench_var 0
scoreboard players set $ammo_spectral ca.ench_var 0
scoreboard players set $ammo_tipped ca.ench_var 0

function cartographer_custom_enchantments:enchant_effects/repeating/recurse/quiver_start

function cartographer_custom_enchantments:enchant_effects/repeating/recurse/take_arrows
