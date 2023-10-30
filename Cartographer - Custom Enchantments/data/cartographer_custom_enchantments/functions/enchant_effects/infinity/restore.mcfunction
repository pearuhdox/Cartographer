tag @s add i.restore_inventory

scoreboard players set $success ca.inf_cdl_var 0

function bb:lib/pldata/read

scoreboard players set $slot ca.inf_cdl_var -10000
scoreboard players set $slot ca.inf_kc_var -10000

execute store result score $slot ca.inf_cdl_var run data get entity @s SelectedItemSlot
execute store result score $slot ca.inf_kc_var run data get entity @s SelectedItemSlot
execute store result score $slot ca.inf_ch_var run data get entity @s SelectedItemSlot

data modify storage cartographer_custom_enchantments:infinity with_cdl set value []
data modify storage cartographer_custom_enchantments:infinity with_kc set value []
data modify storage cartographer_custom_enchantments:infinity cdl_item set value {}
data modify storage cartographer_custom_enchantments:infinity kc_item set value {}
data modify storage cartographer_custom_enchantments:infinity transformed set value {id:"minecraft:firework_star",Count:1b,tag:{StoredItem:{},display:{Name:'{"text":"Infinite Potential","color":"#EAB0FF","italic":false}',Lore:['{"text":"This Infinity item has a cooldown.","color":"gray","italic":false}','{"text":"It is currently recharging and","color":"gray","italic":false}','{"text":"can be used again when recharged.","color":"gray","italic":false}','{"text":" "}','{"text":"Cooldown only decreases while the","color":"gray","italic":false}','{"text":"item is on your hotbar or offhand.","color":"gray","italic":false}']},HideFlags:32,Explosion:{Type:0,Colors:[I;9866889]}}}

# Start Mainhand
data modify storage i:internal working_it set value []
data modify storage i:internal temp set from storage bbl:pldata sudo_root.working_data.infinity
function cartographer_custom_enchantments:enchant_effects/infinity/filter
data modify storage cartographer_custom_enchantments:infinity with_cdl set from storage i:internal working_it
function cartographer_custom_enchantments:enchant_effects/infinity/with_cdl/get_slot



# Do Offhand
data modify storage i:internal working_it2 set value []
data modify storage i:internal working_it2 append from storage bbl:pldata sudo_root.working_data.infinity[{Slot:-106b}]
data modify storage i:internal working_it2[0].Slot set value 0b

execute unless data storage cartographer_custom_enchantments:infinity cdl_item.tag.CustomEnchantments[{id:"infinity"}] run function cartographer_custom_enchantments:enchant_effects/infinity/with_cdl/offhand

data modify block 4206899 0 4206900 Items set from storage i:internal working_it2
item replace entity @s weapon.offhand with air
loot replace entity @s weapon.offhand 1 mine 4206899 0 4206900 air{drop_contents:1b}



# Return to Mainhand
data modify block 4206899 0 4206900 Items set from storage i:internal working_it
loot replace entity @s hotbar.0 9 mine 4206899 0 4206900 air{drop_contents:true}

data modify block 4206899 0 4206900 Items set value []

execute if score $success ca.inf_cdl_var matches 1.. run tag @s add ca.force_inf_update
schedule function cartographer_custom_enchantments:enchant_effects/infinity/save_global 1t 

tag @s remove i.restore_inventory