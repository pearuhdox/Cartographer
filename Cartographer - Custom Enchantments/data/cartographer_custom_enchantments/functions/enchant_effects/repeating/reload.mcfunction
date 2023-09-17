data modify storage cartographer_custom_enchantments:repeating Item set value {}

execute if score @s ca.repeating matches 1..7 run data modify storage cartographer_custom_enchantments:repeating Item set from entity @s SelectedItem
execute if score @s ca.repeating matches 11..17 run data modify storage cartographer_custom_enchantments:repeating Item set from entity @s Inventory[{Slot:-106b}]

data modify storage cartographer_custom_enchantments:repeating Item.Slot set value 0b

#Consume the necessary arrows. In creative, no arrows are consumed, and stock is fully loaded.
scoreboard players set @s ca.ammo 0

#Mainhand
execute if score @s ca.repeating matches 1..7 if entity @s[nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run function cartographer_custom_enchantments:enchant_effects/repeating/reload_branch
execute if score @s ca.repeating matches 11..17 if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run function cartographer_custom_enchantments:enchant_effects/repeating/reload_branch


#Create our loaded inventory of arrows.
function cartographer_custom_enchantments:enchant_effects/repeating/recurse/get_inventory


#Allow reload to use multiple recoils. Reload can happen in air.
execute if score @s ca.recoil matches 1.. run scoreboard players operation @s ca.recoil_count = @s ca.ammo


data modify storage cartographer_custom_enchantments:repeating Item.tag.Quiver set from storage cartographer_custom_enchantments:repeating Quiver
function cartographer_custom_enchantments:enchant_effects/repeating/chamber

execute in minecraft:overworld run data modify block 4206900 0 4206901 Items set value {}
execute in minecraft:overworld run data modify block 4206900 0 4206901 Items append from storage cartographer_custom_enchantments:repeating Item

execute store result block 4206900 0 4206901 Items[0].tag.Ammo int 1 run scoreboard players get $ammo_ct ca.ench_var
scoreboard players operation @s ca.ammo = $ammo_ct ca.ench_var


execute if score @s ca.repeating matches 1..7 in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206901 air{drop_contents:1b}
execute if score @s ca.repeating matches 11..17 in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine 4206900 0 4206901 air{drop_contents:1b}

execute at @s run playsound minecraft:block.chest.locked player @a[distance=..8] ~ ~ ~ 10 2

#Run display for subtitle
tag @a[scores={ca.ui_location=1}] remove showing_repeating

function cartographer_custom_enchantments:calc_enchant/run

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" reloaded Repeating.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]