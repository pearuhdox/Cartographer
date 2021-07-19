#These effects activate when a ranged attack is made via bow, crossbow, or trident. They are made at the player.


#Hydraulic
execute if score $cu_en_ranged ca.enabler matches 1.. as @a[scores={ca.hydraulic=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/hydraulic

#Do all ranged checks.
execute if score $cu_en_ranged ca.enabler matches 1.. run function cartographer_custom_enchantments:enchant_effects/apply_ranged_tags_trident

#Do Loyalty After
execute if score $cu_en_ranged ca.enabler matches 1.. run execute as @s[scores={ca.loyalty=1..}] at @s unless entity @s[nbt={SelectedItem:{id:"minecraft:trident"}}] run function cartographer_custom_enchantments:enchant_effects/loyalty

#Reset Fleetfoot
attribute @s minecraft:generic.movement_speed modifier remove 31-321-514-000-6151520

tag @s remove threw_trident