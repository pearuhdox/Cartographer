#These effects activate when a ranged attack is made via bow, crossbow, or trident. They are made at the player.

#Power - Crossbows
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:power"}]}}}] at @s run function cartographer_custom_enchantments:enchant_effects/power_crossbows
execute as @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:power"}]}}]}] at @s run function cartographer_custom_enchantments:enchant_effects/power_crossbows

#Flame - Crossbows
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:flame"}]}}}] at @s run function cartographer_custom_enchantments:enchant_effects/flame_crossbows
execute as @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:flame"}]}}]}] at @s run function cartographer_custom_enchantments:enchant_effects/flame_crossbows


#Punch - Crossbows
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:punch"}]}}}] at @s run function cartographer_custom_enchantments:enchant_effects/punch/crossbows
execute as @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch"}]}}]}] at @s run function cartographer_custom_enchantments:enchant_effects/punch/crossbows


#Multishot - Specifically for Bows, Must go First
execute if score @s ca.multishot matches 1.. at @s if score @s ca.draw_bow_time matches 20.. run function cartographer_custom_enchantments:enchant_effects/multishot/player

# Custom Ranged Damage Attribute
execute if score @s ca.attr_ranged matches 1.. if score @s ca.attr_ranged_perc matches 100 run function cartographer_custom_enchantments:attribute_effects/ranged_damage/player
execute unless score @s ca.attr_ranged_perc matches 100 unless score @s ca.attr_ranged matches 1.. run function cartographer_custom_enchantments:attribute_effects/ranged_damage/player
execute unless score @s ca.attr_ranged_perc matches 100 if score @s ca.attr_ranged matches 1.. run function cartographer_custom_enchantments:attribute_effects/ranged_damage/player

#Deadeye
execute as @s[scores={ca.deadeye=1..,ca.fire_cbow=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye

#Piercing
execute if score @s ca.piercing matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/piercing/player

#Point Blank
execute as @s[scores={ca.point_blank=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/point_blank

#Sharpshot
execute as @s[scores={ca.sharpshot=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/sharpshot

#Repeating Trigger
execute as @s[scores={ca.repeating=1..7,ca.fire_cbow=1..},nbt={SelectedItem:{tag:{Charged:0b}}}] at @s run scoreboard players set @s ca.rpt_cdl 3
execute as @s[scores={ca.repeating=11..17,ca.fire_cbow=1..},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b}}]}] at @s run scoreboard players set @s ca.rpt_cdl 3
execute if score @s ca.rpt_cdl matches 1.. run scoreboard players operation @s ca.core_delay_check = @s ca.rpt_cdl


#Recoil Trigger
execute as @s[scores={ca.recoil=1..,ca.fire_cbow=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/recoil/master

#Overcharge Happens Here - Specifically last after all other Bow enchantments
execute as @s[scores={ca.overcharge=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/overcharge

#Focus Happens Here - Specifically last after all other Bow enchantments
execute if score @s ca.draw_bow_time matches 20..27 as @s[scores={ca.focus=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/focus/master


#Resourceful
execute if score @s ca.resourceful matches 1.. run function cartographer_custom_enchantments:enchant_effects/resourceful/chance

#Grab Explosive Shot Visual
execute as @s[scores={ca.explosive=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/explosive/visual

scoreboard players set @s ca.recently_fired_weapon 80


#Reset Fleetfoot
attribute @s minecraft:generic.movement_speed modifier remove 31-321-514-000-6151520

#Do all ranged checks.
function cartographer_custom_enchantments:enchant_effects/apply_ranged_tags


#Encumbering
execute as @s[scores={ca.curse_encum=1..}] at @s as @e[type=#bb:arrow,sort=nearest,limit=3,distance=..6,nbt=!{inGround:1b}] at @s run function cartographer_custom_enchantments:enchant_effects/curse_encumbering

#Trueshot - Must go after everything else
execute as @s[scores={ca.trueshot=1..}] at @s as @e[type=#bb:arrow,sort=nearest,limit=3,distance=..6,nbt=!{inGround:1b}] at @s run function cartographer_custom_enchantments:enchant_effects/trueshot


#Run Tags
execute if score @s ca.fire_bow matches 1.. run function #minecraft:cartographer/events/player_shoot_bow
execute if score @s ca.fire_cbow matches 1.. run function #minecraft:cartographer/events/player_shoot_crossbow