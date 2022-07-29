#Agility
function cartographer_custom_enchantments:enchant_effects/agility
#Aquadynamic
function cartographer_custom_enchantments:enchant_effects/aquadynamic
#Cleansing (only when no hunger)
execute if entity @s[nbt=!{ActiveEffects:[{Id:17}]}] run function cartographer_custom_enchantments:enchant_effects/cleansing

#Second Wind - Needs to go before Evasion
execute as @s[scores={ca.second_wind=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/second_wind

#Evasion
execute as @s[scores={ca.evasion=1..},tag=evading] at @s run function cartographer_custom_enchantments:enchant_effects/evasion

execute as @s[scores={ca.repeating=1..7}] at @s unless data entity @s SelectedItem.tag.Ammo run item modify entity @s weapon.mainhand cartographer_custom_enchantments:fix_ammo
execute as @s[scores={ca.repeating=11..17}] at @s unless data entity @s Inventory[{Slot:-106b}].tag.Ammo run item modify entity @s weapon.offhand cartographer_custom_enchantments:fix_ammo

#Repeating Reloading and Rearming Mechs
execute as @s[scores={ca.repeating=1..7,ca.rpt_cdl=1},nbt={SelectedItem:{tag:{Charged:0b}}}] at @s run function cartographer_custom_enchantments:enchant_effects/repeating
execute as @s[scores={ca.repeating=11..17,ca.rpt_cdl=1},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b}}]}] at @s run function cartographer_custom_enchantments:enchant_effects/repeating

execute as @s[scores={ca.repeating=1..7},nbt={SelectedItem:{tag:{Ammo:0,Charged:1b}}}] at @s run function cartographer_custom_enchantments:enchant_effects/repeating/reload
execute as @s[scores={ca.repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] at @s run function cartographer_custom_enchantments:enchant_effects/repeating/reload

#Spurs
execute as @s[scores={ca.spurs=1..}] at @s if block ~ ~ ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @s[scores={ca.spurs=1..}] at @s if block ~ ~1 ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @s[scores={ca.spurs=1..}] at @s if block ~0.75 ~ ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @s[scores={ca.spurs=1..}] at @s if block ~0.75 ~1 ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @s[scores={ca.spurs=1..}] at @s if block ~ ~ ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @s[scores={ca.spurs=1..}] at @s if block ~ ~1 ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @s[scores={ca.spurs=1..}] at @s if block ~-0.75 ~ ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @s[scores={ca.spurs=1..}] at @s if block ~-0.75 ~1 ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @s[scores={ca.spurs=1..}] at @s if block ~ ~ ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @s[scores={ca.spurs=1..}] at @s if block ~ ~1 ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @s[scores={ca.spurs=1..}] at @s if block ~0.75 ~ ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @s[scores={ca.spurs=1..}] at @s if block ~0.75 ~1 ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @s[scores={ca.spurs=1..}] at @s if block ~-0.75 ~ ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @s[scores={ca.spurs=1..}] at @s if block ~-0.75 ~1 ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @s[scores={ca.spurs=1..}] at @s if block ~-0.75 ~ ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @s[scores={ca.spurs=1..}] at @s if block ~-0.75 ~1 ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @s[scores={ca.spurs=1..}] at @s if block ~0.75 ~ ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @s[scores={ca.spurs=1..}] at @s if block ~0.75 ~1 ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

#Curses - Malevolent
execute as @s[scores={ca.curse_mal=2..}] at @s run function cartographer_custom_enchantments:enchant_effects/curse_malevolence

#Note
#Regeneration does not run here because it runs on a 1 second timer.