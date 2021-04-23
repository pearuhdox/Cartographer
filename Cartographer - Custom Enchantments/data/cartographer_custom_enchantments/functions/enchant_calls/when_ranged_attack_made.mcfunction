#These effects activate when a ranged attack is made via bow, crossbow, or trident. They are made at the player.

#Deadeye
execute as @s[scores={deadeye=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye

#Power - Crossbows
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:power"}]}}}] at @s run function cartographer_custom_enchantments:enchant_effects/power_crossbows
execute as @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:power"}]}}]}] at @s run function cartographer_custom_enchantments:enchant_effects/power_crossbows

#Flame - Crossbows
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:flame"}]}}}] at @s run function cartographer_custom_enchantments:enchant_effects/flame_crossbows
execute as @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:flame"}]}}]}] at @s run function cartographer_custom_enchantments:enchant_effects/flame_crossbows

#Flash Calc
execute as @s[scores={flash=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/flash/apply
execute as @s[scores={flash=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/flash/apply

#Punch - Crossbows
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:punch"}]}}}] at @s run function cartographer_custom_enchantments:enchant_effects/punch/crossbows
execute as @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch"}]}}]}] at @s run function cartographer_custom_enchantments:enchant_effects/punch/crossbows

#Point Blank
execute as @s[scores={point_blank=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/point_blank

#Repeating Trigger
execute as @s[scores={repeating=1..7,helper_fire_cbow=1..},nbt={SelectedItem:{tag:{Charged:0b}}}] at @s run scoreboard players set @s helper_repeat 3
execute as @s[scores={repeating=11..17,helper_fire_cbow=1..},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b}}]}] at @s run scoreboard players set @s helper_repeat 3

#Sharpshot
execute as @s[scores={sharpshot=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/sharpshot

#Trueshot
execute as @s[scores={trueshot=1..}] at @s run execute as @e[type=#cartographer_core:arrow,sort=nearest,limit=3,distance=..6,nbt=!{inGround:1b}] at @s run function cartographer_custom_enchantments:enchant_effects/trueshot

#Encumbering
execute as @s[scores={curse_encumber=1..}] at @s run execute as @e[type=#cartographer_core:arrow,sort=nearest,limit=1,distance=..6,nbt=!{inGround:1b}] at @s run function cartographer_custom_enchantments:enchant_effects/curse_encumbering


#Do all ranged checks.
function cartographer_custom_enchantments:enchant_effects/apply_ranged_tags