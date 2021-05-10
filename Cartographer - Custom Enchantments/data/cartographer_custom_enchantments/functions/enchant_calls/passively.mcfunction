#Agility
function cartographer_custom_enchantments:enchant_effects/agility
#Aquadynamic
function cartographer_custom_enchantments:enchant_effects/aquadynamic
#Cleansing (only when no hunger)
execute if entity @s[nbt=!{ActiveEffects:[{Id:17b}]}] run function cartographer_custom_enchantments:enchant_effects/cleansing
#Concealed
function cartographer_custom_enchantments:enchant_effects/concealed

#Second Wind - Needs to go before Evasion
execute as @a[scores={second_wind=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/second_wind

#Evasion
execute as @a[scores={evasion=1..},tag=evading] at @s run function cartographer_custom_enchantments:enchant_effects/evasion

#Repeating Reloading and Rearming Mechs
execute as @s[scores={repeating=1..7,helper_repeat=1},nbt={SelectedItem:{tag:{Charged:0b}}}] at @s run function cartographer_custom_enchantments:enchant_effects/repeating
execute as @s[scores={repeating=11..17,helper_repeat=1},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b}}]}] at @s run function cartographer_custom_enchantments:enchant_effects/repeating

execute as @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Ammo:0,Charged:1b}}}] at @s run function cartographer_custom_enchantments:enchant_effects/repeating/reload
execute as @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] at @s run function cartographer_custom_enchantments:enchant_effects/repeating/reload

#Spurs
execute as @a[scores={spurs=1..}] at @s run execute if block ~ ~ ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @a[scores={spurs=1..}] at @s run execute if block ~ ~1 ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @a[scores={spurs=1..}] at @s run execute if block ~0.75 ~ ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @a[scores={spurs=1..}] at @s run execute if block ~0.75 ~1 ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @a[scores={spurs=1..}] at @s run execute if block ~ ~ ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @a[scores={spurs=1..}] at @s run execute if block ~ ~1 ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @a[scores={spurs=1..}] at @s run execute if block ~-0.75 ~ ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @a[scores={spurs=1..}] at @s run execute if block ~-0.75 ~1 ~ #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @a[scores={spurs=1..}] at @s run execute if block ~ ~ ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @a[scores={spurs=1..}] at @s run execute if block ~ ~1 ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @a[scores={spurs=1..}] at @s run execute if block ~0.75 ~ ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @a[scores={spurs=1..}] at @s run execute if block ~0.75 ~1 ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @a[scores={spurs=1..}] at @s run execute if block ~-0.75 ~ ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @a[scores={spurs=1..}] at @s run execute if block ~-0.75 ~1 ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @a[scores={spurs=1..}] at @s run execute if block ~-0.75 ~ ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @a[scores={spurs=1..}] at @s run execute if block ~-0.75 ~1 ~0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

execute as @a[scores={spurs=1..}] at @s run execute if block ~0.75 ~ ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs
execute as @a[scores={spurs=1..}] at @s run execute if block ~0.75 ~1 ~-0.75 #cartographer_custom_enchantments:spurs run function cartographer_custom_enchantments:enchant_effects/spurs

#Curses - Malevolent
execute as @s[scores={curse_malevolent=2..}] at @s run function cartographer_custom_enchantments:enchant_effects/curse_malevolence

#Note
#Regeneration does not run here because it runs on a 1 second timer.