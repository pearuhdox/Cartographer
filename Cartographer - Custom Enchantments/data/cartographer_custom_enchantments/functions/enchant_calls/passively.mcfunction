#Agility
execute if score @s ca.agility matches 1.. run function cartographer_custom_enchantments:enchant_effects/agility/master
#Aquadynamic
execute if score @s ca.aquadynamic matches 1.. run function cartographer_custom_enchantments:enchant_effects/aquadynamic/master
#Cleansing (only when no hunger)
function cartographer_custom_enchantments:enchant_effects/cleansing/master

#Second Wind - Needs to go before Evasion
execute as @s[scores={ca.second_wind=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/second_wind/master

#Evasion
execute as @s[scores={ca.evasion=1..},tag=evading] at @s run function cartographer_custom_enchantments:enchant_effects/evasion/master

execute as @s[scores={ca.repeating=1..7}] at @s if data entity @s SelectedItem{id:"minecraft:crossbow"} unless data entity @s SelectedItem.tag.Ammo run item modify entity @s weapon.mainhand cartographer_custom_enchantments:fix_ammo
execute as @s[scores={ca.repeating=11..17}] at @s if data entity @s Inventory[{id:"minecraft:crossbow",Slot:-106b}] unless data entity @s Inventory[{Slot:-106b}].tag.Ammo run item modify entity @s weapon.offhand cartographer_custom_enchantments:fix_ammo

#Repeating Reloading and Rearming Mechs
execute as @s[scores={ca.repeating=1..7,ca.rpt_cdl=1},nbt={SelectedItem:{tag:{Charged:0b}}}] at @s run function cartographer_custom_enchantments:enchant_effects/repeating/rechamber_start
execute as @s[scores={ca.repeating=11..17,ca.rpt_cdl=1},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b}}]}] at @s run function cartographer_custom_enchantments:enchant_effects/repeating/rechamber_start

execute as @s[scores={ca.repeating=1..7},nbt={SelectedItem:{tag:{Ammo:0,Charged:1b}}}] at @s run function cartographer_custom_enchantments:enchant_effects/repeating/reload
execute as @s[scores={ca.repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] at @s run function cartographer_custom_enchantments:enchant_effects/repeating/reload


#Spurs
execute as @s[scores={ca.spurs=1..}] at @s if block ~ ~ ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master
execute as @s[scores={ca.spurs=1..}] at @s if block ~ ~1 ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master

execute as @s[scores={ca.spurs=1..}] at @s if block ~0.75 ~ ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master
execute as @s[scores={ca.spurs=1..}] at @s if block ~0.75 ~1 ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master

execute as @s[scores={ca.spurs=1..}] at @s if block ~ ~ ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master
execute as @s[scores={ca.spurs=1..}] at @s if block ~ ~1 ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master

execute as @s[scores={ca.spurs=1..}] at @s if block ~-0.75 ~ ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master
execute as @s[scores={ca.spurs=1..}] at @s if block ~-0.75 ~1 ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master

execute as @s[scores={ca.spurs=1..}] at @s if block ~ ~ ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master
execute as @s[scores={ca.spurs=1..}] at @s if block ~ ~1 ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master

execute as @s[scores={ca.spurs=1..}] at @s if block ~0.75 ~ ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master
execute as @s[scores={ca.spurs=1..}] at @s if block ~0.75 ~1 ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master

execute as @s[scores={ca.spurs=1..}] at @s if block ~-0.75 ~ ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master
execute as @s[scores={ca.spurs=1..}] at @s if block ~-0.75 ~1 ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master

execute as @s[scores={ca.spurs=1..}] at @s if block ~-0.75 ~ ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master
execute as @s[scores={ca.spurs=1..}] at @s if block ~-0.75 ~1 ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master

execute as @s[scores={ca.spurs=1..}] at @s if block ~0.75 ~ ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master
execute as @s[scores={ca.spurs=1..}] at @s if block ~0.75 ~1 ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs/master

#Curses - Malevolent
execute as @s[scores={ca.curse_mal=2..}] at @s run function cartographer_custom_enchantments:enchant_effects/curse_malevolence/master

#Note
#Regeneration does not run here because it runs on a 1 second timer.