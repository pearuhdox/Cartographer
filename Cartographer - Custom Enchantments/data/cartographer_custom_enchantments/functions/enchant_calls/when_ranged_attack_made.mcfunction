#These effects activate when a ranged attack is made via bow, crossbow, or trident. They are made at the player.

#Deadeye
execute as @s[scores={ca.deadeye=1..,ca.fire_cbow=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye

#Power - Crossbows
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:power"}]}}}] at @s run function cartographer_custom_enchantments:enchant_effects/power_crossbows
execute as @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:power"}]}}]}] at @s run function cartographer_custom_enchantments:enchant_effects/power_crossbows

#Flame - Crossbows
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:flame"}]}}}] at @s run function cartographer_custom_enchantments:enchant_effects/flame_crossbows
execute as @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:flame"}]}}]}] at @s run function cartographer_custom_enchantments:enchant_effects/flame_crossbows

#Flash Calc
execute as @s[scores={ca.flash=1..,ca.fire_bow=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/flash/apply
execute as @s[scores={ca.flash=1..,ca.fire_cbow=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/flash/apply

#Punch - Crossbows
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:punch"}]}}}] at @s run function cartographer_custom_enchantments:enchant_effects/punch/crossbows
execute as @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch"}]}}]}] at @s run function cartographer_custom_enchantments:enchant_effects/punch/crossbows

#Point Blank
execute as @s[scores={ca.point_blank=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/point_blank

#Repeating Trigger
execute as @s[scores={ca.repeating=1..7,ca.fire_cbow=1..},nbt={SelectedItem:{tag:{Charged:0b}}}] at @s run scoreboard players set @s ca.rpt_cdl 3
execute as @s[scores={ca.repeating=11..17,ca.fire_cbow=1..},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b}}]}] at @s run scoreboard players set @s ca.rpt_cdl 3

#Recoil Trigger
execute as @s[scores={ca.recoil=1..,ca.fire_cbow=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/recoil/master

#Sharpshot
execute as @s[scores={ca.sharpshot=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/sharpshot

#Trueshot
execute as @s[scores={ca.trueshot=1..}] at @s as @e[type=#bb:arrow,sort=nearest,limit=3,distance=..6,nbt=!{inGround:1b}] at @s run function cartographer_custom_enchantments:enchant_effects/trueshot

#Encumbering
execute as @s[scores={ca.curse_encum=1..}] at @s as @e[type=#bb:arrow,sort=nearest,limit=1,distance=..6,nbt=!{inGround:1b}] at @s run function cartographer_custom_enchantments:enchant_effects/curse_encumbering

#Overcharge Happens Here - Specifically last after all other Bow enchantments
execute as @s[scores={ca.overcharge=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/overcharge

#Grab Explosive Shot Visual
execute as @s[scores={ca.explosive=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/explosive/visual

scoreboard players set @s ca.recently_fired_weapon 80


#Reset Fleetfoot
attribute @s minecraft:generic.movement_speed modifier remove 31-321-514-000-6151520

#Do all ranged checks.
function cartographer_custom_enchantments:enchant_effects/apply_ranged_tags

#Run Tags
execute if score @s ca.fire_bow matches 1.. run function #minecraft:cartographer/events/player_shoot_bow
execute if score @s ca.fire_cbow matches 1.. run function #minecraft:cartographer/events/player_shoot_crossbow